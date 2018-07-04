#include <stdio.h> /* NULL */
#include <stdlib.h> /* malloc, free */
#include <string.h> /* strcmp */
#include <sstream> /* std::istringstream */
#include <iostream> /* std::cout, std::cerr, std::endl */

/**
 * Returns the primes from 1 to <limit> as a std::size_t* that ends with a 0.
 * NULL if <limit> is negative or malloc or realloc returned NULL.
 */
std::size_t* prime_sieve(std::size_t limit) {
    if (limit < 0) {
        return NULL;
    }
    if (limit < 2) {
        // No primes less than 2
        std::size_t* primes = (std::size_t*) malloc(sizeof(std::size_t));
        primes[0] = 0;
        return primes;
    }
    limit++;  // Add one so the last index was the old limit

    // An array of bools where sieve[i] is false if i is prime
    bool* sieve = (bool*) malloc(limit * sizeof(bool));
    if (sieve == NULL) {
        return NULL;
    }

    // An array holding the prime numbers. Ends with 0.
    std::size_t* primes = (std::size_t*) malloc(sizeof(std::size_t));
    if (primes == NULL) {
        free(sieve);
        return NULL;
    }

    // 0 and 1 are not prime.
    sieve[0] = true;
    sieve[1] = true;

    std::size_t n = 0;

    for (std::size_t i = 0; i < limit; i++) {
        if (!sieve[i]) {
            // i is prime

            primes[n++] = i;

            // Extend primes to be one longer
            std::size_t* new_primes = (std::size_t*) realloc(primes, (n + 1) * sizeof(std::size_t));
            if (new_primes == NULL) {
                free(sieve);
                free(primes);
                return NULL;
            }
            primes = new_primes;

            // Mark i*i..limit in sieve as not prime,
            // as they are a multiple of i
            for (std::size_t j = i * i; j < limit; j += i) {
                sieve[j] = true;
            }
        }
    }
    free(sieve);
    primes[n] = 0;
    return primes;
}

int main(int argc, char* argv[]) {
    std::size_t limit;
    limit = 100000;

    std::size_t* primes = prime_sieve(limit);
    if (primes == NULL) {
        // malloc or realloc returned NULL.
        std::cerr << "Ran out of memory" << std::endl;
        return 1;
    }

    std::size_t i = 0;
    if (std::size_t prime = primes[i++]) {
        // The first one has no space preceding it
        std::cout << prime;
        while (prime = primes[i++]) {
            std::cout << ' ' << prime;
        }
    }
    std::cout << std::endl;
    free(primes);
    return 0;
}

