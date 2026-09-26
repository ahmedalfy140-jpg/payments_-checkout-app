import 'package:dio/dio.dart';

class ApiService {
  final Dio dio =Dio();

  Future <Response> post({required body , required String url , required String token ,String? contentType })async{
   var response= await dio.post(body, data: url,
   options: Options(
    contentType:contentType ,
    headers: {'Authorization':"Bearer $token"}
   )

   );
   return response; 
  }
}