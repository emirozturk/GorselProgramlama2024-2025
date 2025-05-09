class Response{
  bool isSuccess;
  String message;
  var data;
  Response({required this.isSuccess, required this.message, this.data});

  static Response fromJson(var jsonData) {
    return Response(
      isSuccess: jsonData['isSuccess'],
      message: jsonData['message'],
      data: jsonData['data'],
    );
  }

  static Response fail(String string) {
    return Response(isSuccess: false, message: string, data: null);
  }
  static Response success(var data) {
    return Response(isSuccess: true, message: "",data: data);
  }
}