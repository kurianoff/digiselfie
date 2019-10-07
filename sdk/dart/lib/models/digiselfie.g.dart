// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digiselfie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DigitalSelfie _$DigitalSelfieFromJson(Map<String, dynamic> json) {
  return DigitalSelfie()
    ..type = json['Type'] as String
    ..id = json['Id'] as String
    ..lastUpdates = dateTimeFromEpochUs(json['LastUpdates'] as int)
    ..userId = json['Id_User'] as String
    ..relations = (json['Relations'] as List)?.map((e) => e as String)?.toList()
    ..relation = json['Relation'] as String
    ..muted = json['Muted'] as bool
    ..credentials = json['Credentials'] as String
    ..applicationId = json['ApplicationId'] as String
    ..deleted = dateTimeFromEpochUs(json['Deleted'] as int)
    ..ttl = dateTimeFromEpochUs(json['Ttl'] as int)
    ..innerCompany = json['Company'] as String
    ..innerTitle = json['Title'] as String
    ..innerName = json['Name'] as String
    ..innerFirstName = json['FirstName'] as String
    ..innerMiddleName = json['MiddleName'] as String
    ..innerLastName = json['LastName'] as String
    ..innerNickname = json['Nickname'] as String
    ..suffix = json['Suffix'] as String
    ..salutation = json['Salutation'] as String
    ..hashTags = json['HashTags'] as String
    ..photo = json['Photo'] as String
    ..innerPhone = json['Phone'] as String
    ..innerEmail = json['Email'] as String
    ..innerPhones = (json['Phones'] as List)
        ?.map(
            (e) => e == null ? null : Phone.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..innerEmails = (json['Emails'] as List)
        ?.map(
            (e) => e == null ? null : Email.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..innerSocialProfiles = (json['SocialProfiles'] as List)
        ?.map((e) => e == null
            ? null
            : SocialProfile.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..innerWebsites = (json['Websites'] as List)
        ?.map((e) =>
            e == null ? null : Website.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..innerAddresses = (json['Addresses'] as List)
        ?.map((e) =>
            e == null ? null : Address.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..personalImage = json['PersonalImage'] == null
        ? null
        : PersonalImage.fromJson(json['PersonalImage'] as Map<String, dynamic>)
    ..lockId = json['LockId'] as String;
}

Map<String, dynamic> _$DigitalSelfieToJson(DigitalSelfie instance) {
  final val = <String, dynamic>{
    'Type': instance.type,
    'Id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('LastUpdates', dateTimeToEpochUs(instance.lastUpdates));
  val['Id_User'] = instance.userId;
  writeNotNull('Relations', instance.relations);
  writeNotNull('Relation', instance.relation);
  writeNotNull('Muted', instance.muted);
  writeNotNull('Credentials', instance.credentials);
  writeNotNull('ApplicationId', instance.applicationId);
  writeNotNull('Deleted', dateTimeToEpochUs(instance.deleted));
  writeNotNull('Ttl', dateTimeToEpochUs(instance.ttl));
  writeNotNull('Company', instance.innerCompany);
  writeNotNull('Title', instance.innerTitle);
  writeNotNull('Name', instance.innerName);
  val['FirstName'] = instance.innerFirstName;
  writeNotNull('MiddleName', instance.innerMiddleName);
  writeNotNull('LastName', instance.innerLastName);
  val['Nickname'] = instance.innerNickname;
  writeNotNull('Suffix', instance.suffix);
  writeNotNull('Salutation', instance.salutation);
  writeNotNull('HashTags', instance.hashTags);
  writeNotNull('Photo', instance.photo);
  writeNotNull('Phone', instance.innerPhone);
  writeNotNull('Email', instance.innerEmail);
  writeNotNull('Phones', instance.innerPhones);
  writeNotNull('Emails', instance.innerEmails);
  writeNotNull('SocialProfiles', instance.innerSocialProfiles);
  writeNotNull('Websites', instance.innerWebsites);
  writeNotNull('Addresses', instance.innerAddresses);
  writeNotNull('PersonalImage', instance.personalImage);
  writeNotNull('LockId', instance.lockId);
  return val;
}

DigitalSelfieWritable _$DigitalSelfieWritableFromJson(
    Map<String, dynamic> json) {
  return DigitalSelfieWritable()
    ..type = json['Type'] as String
    ..id = json['Id'] as String
    ..lastUpdates = dateTimeFromEpochUs(json['LastUpdates'] as int)
    ..innerCompany = json['Company'] as String
    ..innerTitle = json['Title'] as String
    ..innerName = json['Name'] as String
    ..innerFirstName = json['FirstName'] as String
    ..innerMiddleName = json['MiddleName'] as String
    ..innerLastName = json['LastName'] as String
    ..innerNickname = json['Nickname'] as String
    ..suffix = json['Suffix'] as String
    ..salutation = json['Salutation'] as String
    ..hashTags = json['HashTags'] as String
    ..photo = json['Photo'] as String
    ..innerPhone = json['Phone'] as String
    ..innerEmail = json['Email'] as String
    ..innerPhones = (json['Phones'] as List)
        ?.map(
            (e) => e == null ? null : Phone.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..innerEmails = (json['Emails'] as List)
        ?.map(
            (e) => e == null ? null : Email.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..innerSocialProfiles = (json['SocialProfiles'] as List)
        ?.map((e) => e == null
            ? null
            : SocialProfile.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..innerWebsites = (json['Websites'] as List)
        ?.map((e) =>
            e == null ? null : Website.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..innerAddresses = (json['Addresses'] as List)
        ?.map((e) =>
            e == null ? null : Address.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..personalImage = json['PersonalImage'] == null
        ? null
        : PersonalImage.fromJson(json['PersonalImage'] as Map<String, dynamic>)
    ..lockId = json['LockId'] as String;
}

Map<String, dynamic> _$DigitalSelfieWritableToJson(
    DigitalSelfieWritable instance) {
  final val = <String, dynamic>{
    'Type': instance.type,
    'Id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('LastUpdates', dateTimeToEpochUs(instance.lastUpdates));
  writeNotNull('Company', instance.innerCompany);
  writeNotNull('Title', instance.innerTitle);
  writeNotNull('Name', instance.innerName);
  val['FirstName'] = instance.innerFirstName;
  writeNotNull('MiddleName', instance.innerMiddleName);
  writeNotNull('LastName', instance.innerLastName);
  val['Nickname'] = instance.innerNickname;
  writeNotNull('Suffix', instance.suffix);
  writeNotNull('Salutation', instance.salutation);
  writeNotNull('HashTags', instance.hashTags);
  writeNotNull('Photo', instance.photo);
  writeNotNull('Phone', instance.innerPhone);
  writeNotNull('Email', instance.innerEmail);
  writeNotNull('Phones', instance.innerPhones);
  writeNotNull('Emails', instance.innerEmails);
  writeNotNull('SocialProfiles', instance.innerSocialProfiles);
  writeNotNull('Websites', instance.innerWebsites);
  writeNotNull('Addresses', instance.innerAddresses);
  writeNotNull('PersonalImage', instance.personalImage);
  writeNotNull('LockId', instance.lockId);
  return val;
}

DigitalSelfieReadOnly _$DigitalSelfieReadOnlyFromJson(
    Map<String, dynamic> json) {
  return DigitalSelfieReadOnly()
    ..type = json['Type'] as String
    ..id = json['Id'] as String
    ..lastUpdates = dateTimeFromEpochUs(json['LastUpdates'] as int)
    ..userId = json['Id_User'] as String
    ..relations = (json['Relations'] as List)?.map((e) => e as String)?.toList()
    ..relation = json['Relation'] as String
    ..muted = json['Muted'] as bool
    ..credentials = json['Credentials'] as String
    ..applicationId = json['ApplicationId'] as String
    ..deleted = dateTimeFromEpochUs(json['Deleted'] as int)
    ..ttl = dateTimeFromEpochUs(json['Ttl'] as int);
}

Map<String, dynamic> _$DigitalSelfieReadOnlyToJson(
    DigitalSelfieReadOnly instance) {
  final val = <String, dynamic>{
    'Type': instance.type,
    'Id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('LastUpdates', dateTimeToEpochUs(instance.lastUpdates));
  val['Id_User'] = instance.userId;
  writeNotNull('Relations', instance.relations);
  writeNotNull('Relation', instance.relation);
  writeNotNull('Muted', instance.muted);
  writeNotNull('Credentials', instance.credentials);
  writeNotNull('ApplicationId', instance.applicationId);
  writeNotNull('Deleted', dateTimeToEpochUs(instance.deleted));
  writeNotNull('Ttl', dateTimeToEpochUs(instance.ttl));
  return val;
}

DigiSelfieList _$DigiSelfieListFromJson(Map<String, dynamic> json) {
  return DigiSelfieList(
    items: (json['Items'] as List)
        ?.map((e) => e == null
            ? null
            : DigitalSelfie.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lastKey: json['LastKey'] as String,
  );
}

Map<String, dynamic> _$DigiSelfieListToJson(DigiSelfieList instance) =>
    <String, dynamic>{
      'Items': instance.items,
      'LastKey': instance.lastKey,
    };

ClaimDigiSelfie _$ClaimDigiSelfieFromJson(Map<String, dynamic> json) {
  return ClaimDigiSelfie()
    ..id = json['ID'] as String
    ..name = json['Name'] as String
    ..firstName = json['FirstName'] as String
    ..lastName = json['LastName'] as String
    ..nickname = json['Nickname'] as String
    ..suffix = json['Suffix'] as String
    ..hashTags = json['HashTags'] as String
    ..photo = json['Photo'] as String
    ..phones = (json['Phones'] as List)
        ?.map(
            (e) => e == null ? null : Phone.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..socialProfiles = (json['SocialProfiles'] as List)
        ?.map((e) => e == null
            ? null
            : SocialProfile.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..websites = (json['Websites'] as List)
        ?.map((e) =>
            e == null ? null : Website.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..addresses = (json['Addresses'] as List)
        ?.map((e) =>
            e == null ? null : Address.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..emails = (json['Emails'] as List)
        ?.map(
            (e) => e == null ? null : Email.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..company = json['Company'] as String
    ..title = json['Title'] as String
    ..authToken = json['AuthToken'] as String;
}

Map<String, dynamic> _$ClaimDigiSelfieToJson(ClaimDigiSelfie instance) {
  final val = <String, dynamic>{
    'ID': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Name', instance.name);
  val['FirstName'] = instance.firstName;
  writeNotNull('LastName', instance.lastName);
  val['Nickname'] = instance.nickname;
  writeNotNull('Suffix', instance.suffix);
  writeNotNull('HashTags', instance.hashTags);
  writeNotNull('Photo', instance.photo);
  val['Phones'] = instance.phones;
  val['SocialProfiles'] = instance.socialProfiles;
  val['Websites'] = instance.websites;
  val['Addresses'] = instance.addresses;
  val['Emails'] = instance.emails;
  writeNotNull('Company', instance.company);
  writeNotNull('Title', instance.title);
  writeNotNull('AuthToken', instance.authToken);
  return val;
}

PublicProfileDigiselfie _$PublicProfileDigiselfieFromJson(
    Map<String, dynamic> json) {
  return PublicProfileDigiselfie(
    qrCode: json['QRCode'] as String,
    qrCodeId: json['QRCodeId'] as String,
    applicationLinks: Map<String, String>.from(json['ApplicationLinks'] as Map),
  )
    ..id = json['ID'] as String
    ..name = json['Name'] as String
    ..firstName = json['FirstName'] as String
    ..lastName = json['LastName'] as String
    ..nickname = json['Nickname'] as String
    ..suffix = json['Suffix'] as String
    ..hashTags = json['HashTags'] as String
    ..photo = json['Photo'] as String
    ..phones = (json['Phones'] as List)
        ?.map(
            (e) => e == null ? null : Phone.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..socialProfiles = (json['SocialProfiles'] as List)
        ?.map((e) => e == null
            ? null
            : SocialProfile.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..websites = (json['Websites'] as List)
        ?.map((e) =>
            e == null ? null : Website.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..addresses = (json['Addresses'] as List)
        ?.map((e) =>
            e == null ? null : Address.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..emails = (json['Emails'] as List)
        ?.map(
            (e) => e == null ? null : Email.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..company = json['Company'] as String
    ..title = json['Title'] as String
    ..authToken = json['AuthToken'] as String;
}

Map<String, dynamic> _$PublicProfileDigiselfieToJson(
    PublicProfileDigiselfie instance) {
  final val = <String, dynamic>{
    'ID': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Name', instance.name);
  val['FirstName'] = instance.firstName;
  writeNotNull('LastName', instance.lastName);
  val['Nickname'] = instance.nickname;
  writeNotNull('Suffix', instance.suffix);
  writeNotNull('HashTags', instance.hashTags);
  writeNotNull('Photo', instance.photo);
  val['Phones'] = instance.phones;
  val['SocialProfiles'] = instance.socialProfiles;
  val['Websites'] = instance.websites;
  val['Addresses'] = instance.addresses;
  val['Emails'] = instance.emails;
  writeNotNull('Company', instance.company);
  writeNotNull('Title', instance.title);
  writeNotNull('AuthToken', instance.authToken);
  val['QRCode'] = instance.qrCode;
  val['QRCodeId'] = instance.qrCodeId;
  val['ApplicationLinks'] = instance.applicationLinks;
  return val;
}
