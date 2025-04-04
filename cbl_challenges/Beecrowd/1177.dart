import 'dart:io';

void main() {

    final int x = int.parse(stdin.readLineSync()!);

    List<int> ans = List.filled(1000, 0);

    for (int i = 0;i < 1000;++i) ans[i] = (i % x);
    
    for (int i = 0;i < 1000;++i)
        print('N[$i] = ${ans[i]}');

}
