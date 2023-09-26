import 'dart:convert';

import 'package:http/http.dart';
import 'package:tribal/core/dtos/chuck_dto.dart';

import '../managers/network_utils.dart';

class ChuckApi{

  /// Connects to the service and retrieves the witness tape report
  Future<ChuckDto?> getChuckJoke() async {
    final Response call = await _get("https://api.chucknorris.io/jokes/random");
    if (call == null) {
      return null;
    }

    final dynamic callBody = jsonDecode(call.body);
    final Map<String, dynamic>? result = callBody['data'];
    if (result == null) {
      return null;
    }

    return ChuckDto.fromJson(result);
  }


  Future<Response> _get(String url) async {
    Uri uri = Uri.parse(url);
    Response callResponse = (await apiCall(get(uri,)))!;
    return callResponse;
  }
}