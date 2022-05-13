

String customErrorResponses(_error) {
  late String _response;
  if (_error is Exception) {
    _response = 'Exception: $_error';
  } else {
    _response = 'Unknown error: $_error';
  }
  return _response;
}
