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
