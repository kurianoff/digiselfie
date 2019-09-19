import 'dart:typed_data';

import 'package:digiselfie_sdk/digiselfie_sdk.dart';

import 'api.dart';
import 'api.client.dart';
import 'special.type.payload.dart';
import 'endpoints.dart';
import 'dart:io';

class ImageApi extends Api {
  String endpoint;

  ImageApi(ApiClient client, ClaimDigiSelfie defaultSelfie)
      : super.fromContext(client, defaultSelfie) {
    this.endpoint = ApiEndpoints.Image;
  }

  Future<ApiResponse> upload(File image) async {
    if (image == null) {
      return ApiResponse("OK", 200);
    }

    String url = this.endpoint;
    Uint8List bytes;

    try {
      bytes = image.readAsBytesSync();
    } on FileSystemException catch(e) {
      throw new ApiException(e.toString());
    }

    print("Bytes length: " + bytes?.length.toString());
    return await this.client.uploadAvatar(url, image);
  }

  Future<ApiResponse> getAll() async {
    String url = this.endpoint;
    return await this.client.makeCall("GET", url, null, null);
  }
}
