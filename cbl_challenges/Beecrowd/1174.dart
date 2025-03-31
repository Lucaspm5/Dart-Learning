import 'dart:io';

const int MAXN = 100;

void main() {

    List<String> answer = [];
    List<int> index = [];
    List<bool> points = [];

    for (int i = 0;i < MAXN;++i) {
        String x = stdin.readLineSync()!;
        String partial = '';
        int curr = 0;
        while (curr < x.length && x[curr] != '.') partial += x[curr++];
        int conversion = int.parse(partial);
        if (conversion <= 10) {
            if (curr == x.length) --curr;
            points.add((x[curr] == '.') ? true : false);
            answer.add(x);
            index.add(i);
        }
    }

    int i = 0;

    for (String x in answer) {
        stdout.write('A[${index[i]}] = ');
        print((!points[i++]) ? '${x}.0' : '$x');
    }
}
