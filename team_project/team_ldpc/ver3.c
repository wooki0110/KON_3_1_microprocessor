#include <stdlib.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include <xtime_l.h>
#include <xil_printf.h>

//#include "parameter.h"
#include "benchmarking.h"
#include "LDPC.h"
#include "matrix.h"

#define TEST_CASE 2
#define TEST_ROUNDS 5

unsigned int initializor_dummy(float (*uiParam0)[648], float **uiParam1){return 1;}
unsigned int validator_dummy(float (*uiParam0)[648], float **uiParam1){return 1;}

void ldpcd_ref(float (*NLLR)[N], float** ref_out) {

	float Zxn[Z * Mp][Z * Np] = { 0, }; // Zn bit node processing message
	float Zn[Z * Np] = { 0, };  // final Value L
	float Lxn[Z * Mp][Z * Np] = { 0, };// Lxn check node processing message

	float min1 = 500; //���� �ּڰ�
	float min2 = 500; //�ι�° �ּڰ�
	int minx = 0; //���� �ּڰ��� ��ǥ
	int sgn = 1; //total ��ȣ

	for (int p = 0; p < WC; p++) {

		for(int i = 0; i < Z * Mp; i++){
			for(int j = 0; j < Z * Np; j++){
				Zxn[i][j] = 0;
				Lxn[i][j] = 0;
			}
		}

		for (int i = 0; i < N; i++)
			Zn[i] = NLLR[p][i];

		for (int k = 0; k < iter; k++) { //iteration
		//printf("\n*******************************iteration : %d *****************************\n", k);
			for (int m = 0; m < layer; m++) {
				//printf("\n*******************************layer : %d *****************************\n", m);
				// step 2 Bit Node Processing, Zxn  = Zn - Lxn
				for (int i = 0; i < N; i++) {
					for (int j = m * Z; j < (m + 1) * Z; j++) {
						if (H[j][i]) {
							Zxn[j][i] = Zn[i] - Lxn[j][i];
						}
					}
				}

				// step 3 Check Node Processing, Lxn = sgn * min(Zxn)
				for (int j = m * Z; j < (m + 1) * Z; j++) {
					//min1, min2 step
					for (int i = 0; i < N; i++) {
						if (H[j][i]) {
							if (min1 > fabs(Zxn[j][i])) {
								min2 = min1;
								min1 = fabs(Zxn[j][i]);
								minx = i;
							}
							else if (min2 > fabs(Zxn[j][i])) {
								min2 = fabs(Zxn[j][i]);
							}
							if (Zxn[j][i] < 0) {
								sgn = sgn * -1;
							}
						}
					}

					//sel step
					for (int i = 0; i < N; i++) {
						if (H[j][i]) {
							if (minx == i) {
								if (min2 - Offset > 0) {
									Lxn[j][i] = min2 - Offset;
								}
								else {
									Lxn[j][i] = 0;
								}
							}
							else {
								if (min1 - Offset > 0) {
									Lxn[j][i] = min1 - Offset;
								}
								else {
									Lxn[j][i] = 0;
								}
							}
							if (Zxn[j][i] >= 0) {
								Lxn[j][i] = Lxn[j][i] * sgn;
							}
							else
								Lxn[j][i] = Lxn[j][i] * sgn * -1;
						}
					}
					//min1, min2, sgn reset
					min1 = 500;
					min2 = 500;
					sgn = 1;
				}

				//step 4 Bit Node Updating Zn = Zxn + Lxn
				for (int j = m * Z; j < (m + 1) * Z; j++) {
					for (int i = 0; i < N; i++) {
						if (H[j][i]) {
							Zn[i] = Zxn[j][i] + Lxn[j][i];
						}
					}
				}
			}
		}

		/* output before Hard Decision */
		for (int i = 0; i < MAX_LENGTH; i++)
			ref_out[p][i] = Zn[i];
	}
}

void ldpcd_opt (float (*NLLR)[N], float** opt_out) {

	///////////////////////
	// Edit code below!! //

	float Zxn[Z * Mp][Z * Np] = { 0, }; // Zn bit node processing message
	float Zn[Z * Np] = { 0, };  // final Value L
	float Lxn[Z * Mp][Z * Np] = { 0, };// Lxn check node processing message

	float min1 = 500; //���� �ּڰ�
	float min2 = 500; //�ι�° �ּڰ�
	int minx = 0; //���� �ּڰ��� ��ǥ
	int sgn = 1; //total ��ȣ
	float a = 0;

	for (int p = 0; p < WC; p++) {
		for(int i = 0; i < Z * Mp; i++){
			for(int j = 0; j < Z * Np; j++){
				Zxn[i][j] = 0;
				Lxn[i][j] = 0;
				Zn[j] = NLLR[p][j];
			}
		}
		for (int k = 0; k < iter; k++) { //iteration
		//printf("\n*******************************iteration : %d *****************************\n", k);
			for(int j = 0; j < M; j++){
				//min1, min2 step
				for (int i = 0; i < N; i++) {
					if (H[j][i] == 1) {
						Zxn[j][i] = Zn[i] - Lxn[j][i];
						if (Zxn[j][i] < 0) {
							sgn = sgn * -1;
						}
						a = fabs(Zxn[j][i]);
						if (min1 > a) {
							min2 = min1;
							min1 = a;
							minx = i;
						}
						else if (min2 > a) {
							min2 = a;
						}
					}
				}

				//sel step
				for (int i = 0; i < N; i++) {
					if (H[j][i] == 1) {
						if (minx == i) {
							if (min2 > Offset) {
								Lxn[j][i] = min2 - Offset;
							}
							else {
								Lxn[j][i] = 0;
							}
						}
						else {
							if (min1 > Offset) {
								Lxn[j][i] = min1 - Offset;
							}
							else {
								Lxn[j][i] = 0;
							}
						}
						if (Zxn[j][i] >= 0) {
							Lxn[j][i] = Lxn[j][i] * sgn;
						}
						else
							Lxn[j][i] = Lxn[j][i] * sgn * -1;

						Zn[i] = Zxn[j][i] + Lxn[j][i];
					}
				}
				//min1, min2, sgn reset
				min1 = 500;
				min2 = 500;
				sgn = 1;
			}
		}

		/* output before Hard Decision */
		for (int i = 0; i < MAX_LENGTH; i++)
			opt_out[p][i] = Zn[i];
	}

	// Edit code above!! //
	///////////////////////
}

void Encoder(int* input, int* codeword) {

	//***************  Make G Matrix  ************
	int p = 0;

	for (int i = 0; i < 540; i++) {
		codeword[i] = input[i];
	}

	for (int i = 0; i < 108; i++) {
		for (int j = 0; j < 540; j++) {
			p += input[j] * G[j][i + 540];
			p = p % 2;
		}
		codeword[i + 540] = p;
		p = 0;
	}

}

void LLR_maker(int* codeword, float* LLR) {

	for (int i = 0; i < 648; i++) {
		if (codeword[i] == 1) {
			LLR[i] = 1;
		}
		else {
		LLR[i] = -1;
		}
	}
}

int main()
{
	/***************** random input generation *****************/
	int **input;
	input = (int**)malloc(sizeof(int*) * WC);
	for(int i = 0; i < WC; i++){
		input[i] = (int*)malloc(sizeof(int) * MAX_LENGTH);
	}

	srand(0);
	for(int i = 0; i < WC; i++){
		for(int j = 0; j < MAX_LENGTH; j++){
			input[i][j] = rand() % 2;
		}
	}
	/**********************************************************/

	float **out_ldpcd_ref;
	out_ldpcd_ref = (float**)malloc(sizeof(float*) * WC);
	for(int i = 0; i < WC; i++){
		out_ldpcd_ref[i] = (float*)calloc(MAX_LENGTH, sizeof(float));
	}

	float **out_ldpcd_opt;
	out_ldpcd_opt = (float**)malloc(sizeof(int*) * WC);
	for(int i = 0; i < WC; i++){
		out_ldpcd_opt[i] = (float*)calloc(MAX_LENGTH, sizeof(float));
	}


	xil_printf("\r\n");
	xil_printf("<LDPC decoder>\r\n");

	int mode_sel = 0;

	BENCHMARK_CASE *pBenchmarkCase;
	BENCHMARK_STATISTICS *pStat;


	//1) Data
	//xil_printf("\r\n------------1) Data-----------\n");

	//2) Encoder
	int codeword[WC][N] = { 0, };
	//xil_printf("\r\n------------2) Encoder-----------\n");

	for (int i = 0; i < WC; i++) {
		Encoder(input[i], codeword[i]);
	}

	//3) LLR (-1 : +1)
	//xil_printf("\r\n------------3) LLR-----------\n");
	float LLR[WC][648] = { 0, };

	for (int i = 0; i < WC; i++) {
		LLR_maker(codeword[i], LLR[i]);
	}

	//4) Noise
	//xil_printf("\r\n------------4) Noise-----------\n");
	float NLLR[WC][N] = { 0, };

	for(int i = 0; i < WC; i++){
		for(int j = 0; j < N; j++){
			NLLR[i][j] = LLR[i][j] + (float)(rand() % 100) / 1000;
		}
	}


	int random = 0;
	for(int i = 0; i < WC; i++){
		for(int j = 0 ; j < 20; j++){
			random = (int)rand()%648;
			NLLR[i][random] = -LLR[i][random] / 5 + (float)(rand() % 100) / 1000;
		}
	}


	//5) Decoding
	//xil_printf("\r\n------------5) Decoding-----------\n");

	double error = 0;
	double signal = 0;
	double NSRdB = 0;
	double opt_time = 0;
	double ref_time = 0;

	for (mode_sel = 0; mode_sel < 2; mode_sel++)
	{
		if (mode_sel == 0)
		{
				ldpcd_ref(NLLR, out_ldpcd_ref);
		}
		else
		{
				ldpcd_opt(NLLR, out_ldpcd_opt);
		}
	}

	for (int i = 0; i < WC; i++){
		for (int j = 0; j < MAX_LENGTH; j++) {
			error += pow((out_ldpcd_ref[i][j] - out_ldpcd_opt[i][j]), 2);
			signal += pow(out_ldpcd_ref[i][j], 2);
		}
	}

	NSRdB = 10 * log10(error / signal);

	printf("\r\nMeasured Accuracy : NSR(dB) = %0.3f \n", NSRdB);

	BENCHMARK_CASE BenchmarkCases[TEST_CASE] = {
		{"LDPC Reference", TEST_ROUNDS, initializor_dummy, ldpcd_ref,
			{NLLR, out_ldpcd_ref},
			0, validator_dummy
		},
		{"LDPC Optimization", TEST_ROUNDS, initializor_dummy, ldpcd_opt,
			{NLLR, out_ldpcd_opt},
			0, validator_dummy
		}
	};

	Xil_L1DCacheEnable();
	Xil_L2CacheDisable();
	Xil_L1ICacheEnable();

	xil_printf("\r\n");
	xil_printf("-----Benchmarking Start-----\r\n");
	for (int i = 0; i < TEST_CASE; i++)
	{
		pBenchmarkCase = &BenchmarkCases[i];
		pStat = &(pBenchmarkCase->stat);
		printf("Case %d: %s\r\n", i, pBenchmarkCase->pName);
		run_benchmark_single(pBenchmarkCase);
		statistics_print(pStat);
		if (i == 0)
			ref_time = pStat->ullMax;
		else
			opt_time = pStat->ullMax;
	}
	xil_printf("----Benchmarking Complete----\r\n");
	xil_printf("\r\n");
	printf("Optimized LDPC Decoder is x%.2f faster than Reference\r\n", (double)(ref_time/opt_time));
	xil_printf("\r\n");

	for(int i = 0; i < WC; i++)
		free(input[i]);
	free(input);

	for(int i = 0; i < WC; i++)
		free(out_ldpcd_ref[i]);
	free(out_ldpcd_ref);

	for(int i = 0; i < WC; i++)
		free(out_ldpcd_opt[i]);
	free(out_ldpcd_opt);

    return 0;

}

