#include <stdio.h>

void matmult(int result[3][3], int first[3][3], int second[3][3]);
void matadd(int result[3][3], int first[3][3], int second[3][3]);
void printArrays(int first[3][3], int second[3][3]);
void printResult(int result[3][3]);

void matmult(int result[3][3], int first[3][3], int second[3][3]) {
	for (int i = 0; i < 3; i++) {
		for (int j = 0; j < 3; j++) {
			result[i][j] = first[i][j] * second[i][j];
		}
	}
}

void matadd(int result[3][3], int first[3][3], int second[3][3]) {
	for (int i = 0; i < 3; i++) {
		for (int j = 0; j < 3; j++) {
			result[i][j] = first[i][j] + second[i][j];
		}
	}
}

void printArrays(int first[3][3], int second[3][3]) {
	// Loop through both matrices
	for (int i = 0; i < 3; i++) {

		if (i == 1) {
			printf("A = ");
			printf("|");
		}
		else {
			printf("    ");
		}
		// Top & bottom left bracket for first matrix
		if (i == 0 || i == 2) {
			printf("[");
		}

		// Prints each element of the first matrix
		for (int j = 0; j < 3; j++) {
			if (j == 2) {
				printf("%d", first[i][j]);
			}
			else {
				printf("%d ", first[i][j]);
			}
		}

		// Top & bottom right bracket for first matrix
		if (i == 0 || i == 2) {
			printf("]");
		}
		if (i == 1) {
			printf("|");
		}

		printf("    ");

		if (i == 1) {
			printf("B = ");
		}
		else {
			printf("    ");
		}

		// Top & bottom left bracket for second matrix
		if (i == 0 || i == 2) {
			printf("[");
		}
		else {
			printf("|");
		}

		// Prints each element of the second matrix
		for (int k = 0; k < 3; k++) {
			if (k == 2) {
				printf("%d", first[i][k]);
			}
			else {
				printf("%d ", first[i][k]);
			}
		}

		// Top & bottom right bracket for second matrix
		if (i == 0 || i == 2) {
			printf("]");
		}
		if (i == 1) {
			printf("|");
		}

		printf("\n");
	}
}

void printResult(int result[3][3]) {
	// Print first row of array
	printf("        ");
	printf("[");
	for (int i = 0; i < 3; i++) {
		if (i == 2) {
			printf("%d", result[0][i]);
		}
		else {
			printf("%d  ", result[0][i]);
		}
	}
	printf("]\n");

	// Print second row of array
	printf("A*B+A = ");
	printf("|");
	for (int i = 0; i < 3; i++) {
		if (i == 2) {
			printf("%d", result[1][i]);
		}
		else {
			printf("%d ", result[1][i]);
		}
	}
	printf("|\n");

	// Print third row of array
	printf("        ");
	printf("[");
	for (int i = 0; i < 3; i++) {
		if (i == 2) {
			printf("%d", result[2][i]);
		}
		else {
			printf("%d ", result[2][i]);
		}
	}
	printf("]\n");
}

int main() {
	int A[3][3] = { {1, 2, 3}, {4, 5, 6}, {7, 8, 9} };
	int B[3][3] = { {1, 2, 0}, {3, 4, 5}, {0, 6, 7} };
	int result[3][3] = { {0, 0, 0}, {0, 0, 0}, {0, 0, 0} };

	matmult(result, A, B);
	matadd(result, result, A);
	printArrays(A, B);
	printf("\n");
	printResult(result);

	return 0;
}