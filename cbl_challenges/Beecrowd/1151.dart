import 'dart:io';

void main() {

    int n = int.parse(stdin.readLineSync()!);

    List<int> answer = (int n) {
        List<int> fib = [0, 1];
        while (fib.length < n) fib.add(fib[fib.length - 1] + fib[fib.length - 2]);
        return fib;
    }(n);

    print(answer.join(' '));
}
