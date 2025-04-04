import 'dart:io';

void main() {

    List<int> par = [], impar = [];

    var solve = (List<int> arr, bool flag) {
        for (int i = 0;i < arr.length;++i)
            print('${flag ? 'par' : 'impar'}[$i] = ${arr[i]}');
    };

    for (int i = 0;i < 15;++i) {
        final int n = int.parse(stdin.readLineSync()!);
        if (n % 2 == 0) {
            par.add(n);
        } else impar.add(n);
        if (par.length == 5) {
            solve(par, true);
            par = [];    
        } else if (impar.length == 5) {
            solve(impar, false);
            impar = [];
        }
    }

    if (!impar.isEmpty)
        for (int i = 0;i < impar.length;++i) print('impar[$i] = ${impar[i]}');
    if (!par.isEmpty)
        for (int i = 0;i < par.length;++i) print('par[$i] = ${par[i]}');

}
