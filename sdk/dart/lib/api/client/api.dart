import 'package:digiselfie_sdk/api/client/image.api.dart';
import 'package:digiselfie_sdk/api/client/selfies.api.dart';

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

  Api.fromContext(this.client, this.defaultSelfie);

  Api(this.client) {
  }

  ContactRequestsApi get contactRequests {
    return ContactRequestsApi(this.client, this.defaultSelfie);
  }

  ProfileExchangeApi get profileExchange {
    return ProfileExchangeApi(this.client, this.defaultSelfie);
  }

  AccountsApi get accounts {
    return AccountsApi(this.client, this.defaultSelfie);
  }

  SelfiesApi get selfies {
    return SelfiesApi(this.client, this.defaultSelfie);
  }

  ImageApi get images {
    return ImageApi(this.client, this.defaultSelfie);
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
      print("Set default selfie to: " + this.defaultSelfie.toString());
    } catch(e) {
      print("Error: " + e.toString());
      this.defaultSelfie = null;
    }
  }

}
