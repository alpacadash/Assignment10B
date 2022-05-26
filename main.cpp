#include <iostream>
#include "sumThreeArray.h"
using namespace std;

int main()
{
	const unsigned ARRAY_SIZE = 5;
	long array1[] = { -2, 1, 2, 3, 4 };
	long array2[] = { 1, 0, 3, 4, 15 };
	long array3[] = { 1, 2, 5, 1, 1 };

	// Test the Assembly language subroutine

	SumThreeArrays(array1, array2, array3, ARRAY_SIZE);

	for (unsigned i = 0; i < ARRAY_SIZE; i++)
		cout << array1[i] << ", ";

	cout << endl;

	return 0;
}