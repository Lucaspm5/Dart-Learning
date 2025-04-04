import 'dart:io';

void main() {

    List<int> dp = List.filled(65, 0);

    final int n = int.parse(stdin.readLineSync()!);

    (List<int> dp) {

        dp[0] = 0;
        dp[1] = 1;

        for (int i = 2;i <= 60;++i)
            dp[i] = dp[i-1] + dp[i - 2];

    }(dp);

    for (int i = 0;i < n;++i) {
        
        final int x = int.parse(stdin.readLineSync()!);

        print('Fib($x) = ${dp[x]}');
    }

}
