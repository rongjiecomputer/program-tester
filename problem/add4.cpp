#include <cstdio>
int a, b, total;

int main() {
    freopen("add4.in", "r", stdin);
    freopen("add4.out", "w", stdout);
    scanf("%d%d", &a, &b);
    total = a + b;
    printf("%d", total);
    return 0;
}