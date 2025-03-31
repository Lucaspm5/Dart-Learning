import 'dart:io';

void main() {

    int n = int.parse(stdin.readLineSync()!);

    while (true) {
            
        int x = int.parse(stdin.readLineSync()!);

        bool answer = (int n) {
            if (n == 2) return true;
            if (n % 2 == 0) return false;
            if (n == 1) return false;

            for (int i = 3;i * i <= n;i += 2)
                if (n % i == 0) return false;
            
            return true;
        }(x);

        print((answer) ? '$x eh primo' : '$x nao eh primo');

        n--;
        if (n == 0) break;
    }

}
