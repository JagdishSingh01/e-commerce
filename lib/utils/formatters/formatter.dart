import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    final onlyDate = DateFormat('dd/MM/yyyy').format(date);
    final onlyTime = DateFormat('hh:mm').format(date);
    return '$onlyDate at $onlyTime';
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(
      locale: 'en_IN',
      symbol: '₹',
    ).format(amount); // Customize the currency locale and symbol as needed
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Assuming a 10-digit US phone number format: (123) 456-7890
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    // Add more custom phone number formatting logic for different formats if needed.
    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Assume country code is first 1-3 digits (commonly 1-3, adjust as needed)
    int ccLength =
        2; // Default to 2, but you can enhance this logic for other countries
    if (digitsOnly.startsWith('1')){
      ccLength = 1;
    }// US/Canada
       
    else if (digitsOnly.length > 11) {
      ccLength = 3;
    } // Some countries

    if (digitsOnly.length <= ccLength + 7) {
      // Not enough digits for formatting, return as is
      return phoneNumber;
    }

    String countryCode = digitsOnly.substring(0, ccLength);
    String rest = digitsOnly.substring(ccLength);

    // Group as 3-3-4 if possible
    if (rest.length >= 10) {
      String part1 = rest.substring(0, 3);
      String part2 = rest.substring(3, 6);
      String part3 = rest.substring(6, 10);
      String remaining = rest.length > 10 ? ' ${rest.substring(10)}' : '';
      return '(+$countryCode) $part1 $part2 $part3$remaining';
    } else if (rest.length >= 7) {
      String part1 = rest.substring(0, 3);
      String part2 = rest.substring(3, 6);
      String part3 = rest.substring(6);
      return '(+$countryCode) $part1 $part2 $part3';
    } else {
      return '(+$countryCode) $rest';
    }
  }
}
