import 'dart:io';

void main() {

    int ? end = 1;
    int check = 0; double sum = 0.0;

    do {
        String ?s1 = stdin.readLineSync();
        if (s1 != null) {
            double ?x = double.tryParse(s1);
            if (x != null) {
                if (x >= 0 && x <= 10) {
                    sum += x;
                    check++;
                } else print('nota invalida');
                if (check == 2) {
                    double answer = sum / 2; 
                    print('media = ${answer.toStringAsFixed(2)}');
                    do {
                        print('novo calculo (1-sim 2-nao)'); String ?opcao = stdin.readLineSync();
                        if (opcao != null)
                            end = int.tryParse(opcao);
                    } while (end != 1 && end != 2);
                    if (end == 1)
                        check = 0; sum = 0.0;
                }
            }
        }
    } while (end != 2);
}
