import 'dart:io';

void main(List<String> arguments) {
  Buy isa = Buy();
  print(
      '1) Хотите обменять другую валюту на сом?\n2) Хотите обменять сом на другую валюту?');
  int n = int.parse(stdin.readLineSync()!);
  if (n == 1) {
    isa.changeSell();
  } else if (n == 2) {
    isa.changeBuy();
  } else {
    print('wrong number');
  }
}

class Buy {
  changeBuy() {
    double usd = 83.00;
    double eur = 86.00;
    double rub = 1.335;
    double kzt = 0.1218;
    print('выберите валюту:\n1-usd\n2-eur\n3-rub\n4-kzt');
    int check = int.parse(stdin.readLineSync()!);
    print('how many сом do you want change?');
    int summa = int.parse(stdin.readLineSync()!);
    switch (check) {
      case 1:
        print('обмен $summa сом на ${summa / usd} долларов');
        break;
      case 2:
        print('обмен $summa сом на ${summa / eur} евро');
        break;
      case 3:
        print('обмен $summa сом на ${summa / rub} рублей');
        break;
      case 4:
        print('обмен $summa сом на ${summa / kzt} тенге');
        break;
      default:
    }
  }

  changeSell() {
    double usd = 82.50;
    double eur = 83.00;
    double rub = 1.365;
    double kzt = 0.1850;
    print('выберите валюту:\nusd\neur\nrub\nkzt');
    String check = stdin.readLineSync()!;
    print('how many $check do you want change?');
    int summa = int.parse(stdin.readLineSync()!);
    switch (check) {
      case 'usd':
        print('обмен$summa долларов  на ${summa * usd} сом');
        break;
      case 'eur':
        print('обмен $summa eur на ${summa * eur} сом');
        break;
      case 'rub':
        print('обмен $summa рублей на ${summa * rub} сом');
        break;
      case 'kzt':
        print('обмен $summa тенге на ${summa * kzt} сом');
        break;
      default:
    }
  }
}
