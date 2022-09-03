import 'package:dio/dio.dart';
import 'package:master_app/app/constants/constants.dart';
import 'package:master_app/app/params/auth/master_signup_params.dart';
import 'package:master_app/features/auth/data/models/sign_up_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_api_client.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST('/auth/register')
  Future<HttpResponse<SignUpResponseModel>> signUpMaster(
    @Body() MasterSignUpParams masterSignUpParams,
  );
}
