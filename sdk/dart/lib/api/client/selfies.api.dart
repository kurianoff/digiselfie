import 'api.dart';
import 'api.client.dart';
import 'endpoints.dart';
import 'package:digiselfie_sdk/models/library.dart';

class SelfiesApi extends Api {
  String endpoint;
  ClaimDigiSelfie defaultSelfie;

  SelfiesApi(ApiClient client, ClaimDigiSelfie defaultSelfie)
      : super.fromContext(client, defaultSelfie) {
    this.endpoint = ApiEndpoints.Selfies;
  }

  Future<ApiResponse> getAll() async {
    return await this.client.makeCall("GET", this.endpoint, null, null);
  }

  Future<ApiResponse> updateSelfie(DigitalSelfie selfie) async {
    return await this.client.makeCall("PUT",
        ApiEndpoints.Profile.replaceAll("{id}", selfie.id),
        null, selfie);
  }
}
