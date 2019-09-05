library models;

export 'access_token.dart';
export 'account.dart';
export 'api_key.dart';
export 'basic_types.dart';
export 'contact_request.dart';
export 'digiselfie.dart';
export 'mixins.dart';
export 'relation.dart';
export 'user.dart';
export 'api_object.dart';

DateTime dateTimeFromEpochUs(int us) =>
    us == null ? null : DateTime.fromMicrosecondsSinceEpoch(us);

int dateTimeToEpochUs(DateTime dateTime) => dateTime?.microsecondsSinceEpoch;
