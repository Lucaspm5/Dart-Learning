import 'dart:io';

void main() {

    String ?n = '';
    Set<String> st = {};

    while ((n = stdin.readLineSync()) != null) st.add(n!);

    print(st.length);

}
