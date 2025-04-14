set -ex

lfortran -c src/prime_constants.f90 -o prime_constants.o
lfortran -c src/prime_numbers.f90 -o prime_numbers.o
lfortran -c test/test_primes.f90 -o test_primes.o
gcc -c test/FJ32_256.c -o FJ32_256.o
lfortran prime_constants.o prime_numbers.o test_primes.o FJ32_256.o -o test_primes.out
./test_primes.out
