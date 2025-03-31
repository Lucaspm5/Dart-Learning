import 'dart:io';

void main() {

    int n = int.parse(stdin.readLineSync()!);

    while (true) {
        n--;

        int x = int.parse(stdin.readLineSync()!), sum = 0;

        for (int i = 1;i <= (x ~/ 2);++i)
            sum += ((x % i == 0) ? i : 0);

        stdout.write(x);
        print((sum == x) ? ' eh perfeito' : ' nao eh perfeito');

        if (n == 0) break;
    }

}
