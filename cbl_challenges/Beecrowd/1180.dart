import 'dart:io';

void main() {

    int n = int.parse(stdin.readLineSync()!);

    List<int> x = stdin.readLineSync()!.trim().split(RegExp(r'\s+')).map(int.parse).toList();

    int _min = x[0], index = 0;

    for (int i = 1;i < x.length;++i) {
        if (_min > x[i]) {
            _min = x[i];
            index = i;
        }
    }

    print('Menor valor: $_min');
    print('Posicao: $index');

}
