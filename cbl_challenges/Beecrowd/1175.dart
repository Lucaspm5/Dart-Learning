import 'dart:io';

const int MAXN = 20;

void main() {

    List<int> x = [];

    for (int i = 0;i < MAXN;++i) x.add(int.parse(stdin.readLineSync()!));

    for (int i = 0;i < MAXN ~/ 2;++i) {
        int temp = x[i];
        x[i] = x[x.length - i - 1];
        x[x.length - i - 1] = temp;
    }

    for (int i = 0;i < MAXN;++i) print('N[$i] = ${x[i]}');

}
