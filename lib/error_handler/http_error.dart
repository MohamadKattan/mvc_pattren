class ErrorHttpHandler {
  ErrorHttpHandler({required this.code});
  int code;

  void displayErrorHttp() {
    switch (code) {
      case 400:
        // do some thing 400 (Bad Request)
        break;
      case 401:
        // do some thing 401 (Unauthorized Error)
        break;
      case 403:
        // do some thing  403 (Forbidden)
        break;
      case 404:
        // do some thing  404 (Not Found)
        break;
      case 500:
        // do some thing  500 (Internal Server Error)
        break;
      case 501:
        // do some thing  501 (Internal Server Error)
        break;
      default:
        // do some thing
        break;
    }
  }
}
