import 'package:dio/dio.dart';

abstract class Failure{
   final String errormasg;
   Failure(this.errormasg);


}
class ServerFailure extends Failure{
  ServerFailure(super.errormasg);
  factory ServerFailure.fromDioError(DioError dioError){
    switch(dioError.type){
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!,dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioErrorType.connectionError:
        return ServerFailure('No internet connection');
      case DioErrorType.unknown:
        if(dioError.message!.contains('SocketException')){
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected error, please try again');
        default:return ServerFailure('Opps there was an error, please try again');
    }
  }
  factory ServerFailure.fromResponse(int statusCode,dynamic response){
    if(statusCode==400||statusCode==401||statusCode==403){
      return ServerFailure(response['error']['message']);
    }else if(statusCode==404){
      return ServerFailure('Your request not found, please try later');
    }else if(statusCode==500){
      return ServerFailure('Internal server error, please try later');
    }else{
      return ServerFailure('Opps there was an error, please try again');

    }
  }
}