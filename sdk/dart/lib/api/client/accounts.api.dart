import 'api.dart';
import 'api.client.dart';
import 'endpoints.dart';
import 'package:digiselfie_sdk/models/library.dart';

class AccountsApi extends Api {
  String endpoint;
  ClaimDigiSelfie defaultSelfie;

  AccountsApi(ApiClient client, ClaimDigiSelfie defaultSelfie) : super(client) {
    this.endpoint = ApiEndpoints.Accounts;
    this.defaultSelfie = defaultSelfie;
  }

  Future<ApiResponse> locate(String email, String phone) async {
    String url =
        this.endpoint + "?ak=" + this.client.environment.applicationApiKey;

    var accountLocator = AccountCreateRecoverRequest(
      email: email,
      phone: phone,
      applicationId: this.client.environment.applicationId,
    );

    return await this.client.makeCall("POST", url, null, accountLocator);
  }

  Future<ApiResponse> verify(String locatorId, String code) async {
    String url = ApiEndpoints.AccessRecovery.replaceAll("{id}", locatorId) +
        "?ak=" +
        this.client.environment.applicationApiKey;

    return await this
        .client
        .makeCall("POST", url, null, AccountConfirmationRequest(code: code));
  }
}
