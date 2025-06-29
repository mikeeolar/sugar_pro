import 'package:sugar_pros/core/utils/exports.dart';
import '../utils/network_utils.dart' as network_utils;

class ErrorHandler {
  static parseError(dynamic e, [bool decrypt = true]) {
    if (e.response == null) {
      throw NetworkException('Connection error');
    }

    if (e.toString().contains('500')) {
      throw const NetworkException('Oops! Something went wrong while processing your request. Please try again later.');
    }

    final rawData = e.response?.data;

    final decodedBody = decrypt ? Utils.decryptData(rawData) : rawData;

    final data = network_utils.decodeResponseBodyToJson(decodedBody);

    final errors = data['errors'];
    String errorMessage = 'An unexpected error occurred.';

    if (errors is List && errors.isNotEmpty) {
      errorMessage = errors.join('\n');
    } else if (errors is String) {
      errorMessage = errors;
    } else if (errors is Map) {
      errorMessage = errors.values.map((e) => e.toString()).join('\n');
    }
    throw NetworkException(errorMessage);
  }
}
