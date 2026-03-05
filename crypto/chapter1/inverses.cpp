#include <iostream>

auto main() -> int {
    int num{}, modulo{};

    std::cin >> num >> modulo;

    if (num < 0 || modulo < 0) {
        std::cout << "both values must be positive integers";
        exit(1);
    }

    if (num > modulo) {
        std::cout << "the number is not an element of the given ring";
        exit(1);
    }

    std::cout << "multiplicative inverses of " << num << " in Z" << modulo
              << ":\n";

    for (int i{1}; i != modulo; ++i) {
        if (i * num % modulo == 1) {
            std::cout << i << ' ';
        }
    }

    std::cout << '\n';
}
