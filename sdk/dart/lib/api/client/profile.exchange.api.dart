import 'api.dart';
import 'api.client.dart';
import 'endpoints.dart';
import 'package:digiselfie_sdk/models/library.dart';

class ProfileExchangeApi extends Api {
  String endpoint;
  ClaimDigiSelfie defaultSelfie;

  ProfileExchangeApi(ApiClient client, ClaimDigiSelfie defaultSelfie)
      : super(client) {
    this.endpoint = ApiEndpoints.ProfileExchange;
    this.defaultSelfie = defaultSelfie;
  }

  Future<void> performExchange(String mySelfieId, String exchangeCode) async {
    String queryString = "?key=" + exchangeCode + "&digiselfie=" + mySelfieId;
    String url = this.client.environment.apiUrl + this.endpoint + queryString;

    ApiResponse response = await this.client.makeCall("POST", url, null, null);
    print('(performExchange) Response status: ' + response.code.toString());
    return;
  }
}
