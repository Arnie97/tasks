// 背包問題
// 有N件物品和容量爲V的背包。已知第i件物品的質量m和價值w。

#include <stdio.h>

int pack(int);
int f[120];

int main() {
    int n, t;
    scanf("%d", &n);
    int m[n], w[n];
    for (int i = 0; i < n; ++i) {
        scanf("%d %d", m+i, w+i);
    }
    char pending = 1;
    while (pending) {
        pending = 0;
        for (int i = 1; i < n; ++i)
            if (m[i-1] < m[i]) {
                t = m[i];
                m[i] = m[i-1];
                m[i-1] = t;
                t = w[i];
                w[i] = w[i-1];
                w[i-1] = t;
                pending = 1;
            }
        for (int i = 0; i < n; ++i) {
            printf("%d ", m[i]);
        }
        printf("\n");
        for (int i = 0; i < n; ++i) {
            printf("%d ", w[i]);
        }
        printf("\n\n");
    }
}

int pack(int i) {
    if (f[i])
        return f[i];
    else if (i > 0)
        return f[i] = pack(i-1) + pack(i-2);
    else
        return 1;
}