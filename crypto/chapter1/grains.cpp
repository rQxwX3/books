#include <cmath>
#include <iostream>

constexpr int tiles{64};

auto main() -> int {
    unsigned long long sum{0};

    for (int i{0}; i != tiles; ++i) {
        sum += static_cast<unsigned long long>(std::pow(2, i));
    }

    std::cout << sum << '\n';
}
