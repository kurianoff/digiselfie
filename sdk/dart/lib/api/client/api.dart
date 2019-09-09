import 'library.dart';
import 'package:digiselfie_sdk/models/library.dart';
import 'dart:async';
import 'dart:convert';
import 'contact.requests.api.dart';
import 'profile.exchange.api.dart';
import 'accounts.api.dart';

class Api {
  ApiClient client;
  ClaimDigiSelfie defaultSelfie;

  Api(this.client) {
    if (this.isAuthenticated) {
      getDefaultSelfie();
    }
  }

  ContactRequestsApi get contactRequests {
    return new ContactRequestsApi(this.client, this.defaultSelfie);
  }

  ProfileExchangeApi get profileExchange {
    return new ProfileExchangeApi(this.client, this.defaultSelfie);
  }

  AccountsApi get accounts {
    return new AccountsApi(this.client, this.defaultSelfie);
  }

  bool get isAuthenticated {
    return this.client.hasToken;
  }

  Future<void> getDefaultSelfie() async {
    String url = ApiEndpoints.UserInfo;
    try {
      ApiResponse response = await this.client.makeCall("GET", url, null, null);
      this.defaultSelfie =
          ClaimDigiSelfie.fromJson(JsonDecoder().convert(response.body));
    } on ApiException {
      this.defaultSelfie = null;
    }
  }

}
