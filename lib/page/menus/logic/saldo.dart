int saldo = 700000;
bool visiblity = false;

void Payment(String method, int input) {
  switch (method) {
    case "Bayar":
      saldo -= input; // Deduct the input from saldo
      break;
    case "Top-up":
      saldo += input; // Add the input to saldo
      visiblity = true;
      break;
    case "Minta":
      visiblity = true; // Just set visibility to true for Minta
      break;
  }
}

String formatToCurrency(int amount) {
  String amountString = amount.toString();
  StringBuffer result = StringBuffer();

  for (int i = 0; i < amountString.length; i++) {
    int indexFromEnd = amountString.length - i;
    result.write(amountString[i]);
    if (indexFromEnd > 1 && indexFromEnd % 3 == 1) {
      result.write('.');
    }
  }

  return 'Rp $result,00';
}
