import 'api.dart';
import 'api.client.dart';
import 'endpoints.dart';
import 'package:digiselfie_sdk/models/library.dart';

class ContactRequestsApi extends Api {
  String endpoint;
  ClaimDigiSelfie defaultSelfie;

  ContactRequestsApi(ApiClient client, ClaimDigiSelfie defaultSelfie) : super(client) {
    this.endpoint = ApiEndpoints.ContactRequests;
    this.defaultSelfie = defaultSelfie;
  }

  Future<ApiResponse> accept(String myId, String requestId) async {
    String url = this.endpoint.replaceAll("{id}", myId);
    return await this.client.makeCall("PUT", url, null, [ requestId ]);
  }

  Future<ApiResponse> reject(String myId, String requestId) async {
    String url = this.endpoint.replaceAll("{id}", myId);
    return await this.client.makeCall("DELETE", url, null, [ requestId ]);
  }
}