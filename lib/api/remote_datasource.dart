import 'package:telemedicine_pasien/api/api_client.dart';
import 'package:telemedicine_pasien/api/api_response.dart';
import 'package:telemedicine_pasien/api/service_url.dart';
import 'package:telemedicine_pasien/injection_container.dart';
import 'package:telemedicine_pasien/model/artikel_model.dart';
import 'package:telemedicine_pasien/model/help_member_model.dart';
// model
import 'package:telemedicine_pasien/model/kebijakan_privasi_model.dart';
import 'package:telemedicine_pasien/model/login.dart';
import 'package:telemedicine_pasien/model/promo_banner_model.dart';
import 'package:telemedicine_pasien/model/service_category_model.dart';
import 'package:telemedicine_pasien/model/term_condition.dart';

class RemoteDataSource {
  final ApiClient _apiClient = sl<ApiClient>();
  //post
  Future<ApiResponse<Login>> login([Map<String, dynamic>? params]) async {
    final response = await _apiClient.post(ServiceUrl.loginemail, data: params);
    return ApiResponse.fromJson(response, Login.fromJson);
  }

  //get
  Future<ApiResponse<TermCondition>> getTermCondition() async {
    final response = await _apiClient.get(ServiceUrl.termcondition);
    return ApiResponse.fromJson(response, TermCondition.fromJson);
  }

  Future<ApiResponse<KebijakanPrivasi>> getKebijakanPrivasi(
      Map<String, dynamic> params) async {
    final response = await _apiClient.get(ServiceUrl.kebijakanprivasi,
        queryParameters: params);
    return ApiResponse.fromJson(response, KebijakanPrivasi.fromJson);
  }

  Future<ApiResponse<HelpMemberModel>> getHelpMember() async {
    final response = await _apiClient.get(ServiceUrl.helpmember);
    return ApiResponse.fromJson(response, HelpMemberModel.fromJson);
  }

  Future<ApiResponse<ServiceCategoryModel>> getServiceCategory() async {
    final response = await _apiClient.get(ServiceUrl.servicecategory);
    return ApiResponse.fromJson(response, ServiceCategoryModel.fromJson);
  }

  Future<ApiResponse<PromoBannerModel>> getPromoBanner() async {
    final response = await _apiClient.get(ServiceUrl.promobanner);
    return ApiResponse.fromJson(response, PromoBannerModel.fromJson);
  }

  Future<ApiResponse<ArtikelModel>> getArtikel() async {
    final response = await _apiClient.get(ServiceUrl.artikel);
    return ApiResponse.fromJson(response, ArtikelModel.fromJson);
  }
}
