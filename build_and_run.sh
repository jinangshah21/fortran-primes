set -ex

${FC} -c src/prime_constants.f90 -o prime_constants.o
${FC} -c src/prime_numbers.f90 -o prime_numbers.o
${FC} -c test/test_primes.f90 -o test_primes.o
gcc -c test/FJ32_256.c -o FJ32_256.o
${FC} prime_constants.o prime_numbers.o test_primes.o FJ32_256.o -o test_primes.out
./test_primes.out
