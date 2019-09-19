// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialProfile _$SocialProfileFromJson(Map<String, dynamic> json) {
  return SocialProfile(
    type: json['Type'] as String,
    profileId: json['ProfileId'] as String,
    url: json['Url'] as String,
  );
}

Map<String, dynamic> _$SocialProfileToJson(SocialProfile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Type', instance.type);
  writeNotNull('ProfileId', instance.profileId);
  writeNotNull('Url', instance.url);
  return val;
}

Phone _$PhoneFromJson(Map<String, dynamic> json) {
  return Phone(
    code: json['Code'] as String,
    number: json['Number'] as String,
    type: json['Type'] as String,
  );
}

Map<String, dynamic> _$PhoneToJson(Phone instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Code', instance.code);
  val['Number'] = instance.number;
  writeNotNull('Type', instance.type);
  return val;
}

Website _$WebsiteFromJson(Map<String, dynamic> json) {
  return Website(
    url: json['URL'] as String,
    name: json['Name'] as String,
    description: json['Description'] as String,
    clientId: json['ClientId'] as String,
    clientSecret: json['ClientSecret'] as String,
  );
}

Map<String, dynamic> _$WebsiteToJson(Website instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('URL', instance.url);
  writeNotNull('Name', instance.name);
  writeNotNull('Description', instance.description);
  writeNotNull('ClientId', instance.clientId);
  writeNotNull('ClientSecret', instance.clientSecret);
  return val;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address(
    address1: json['Address1'] as String,
    address2: json['Address2'] as String,
    city: json['City'] as String,
    zip: json['Zip'] as String,
    state: json['State'] as String,
    country: json['Country'] as String,
    type: json['Type'] as String,
  );
}

Map<String, dynamic> _$AddressToJson(Address instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Address1', instance.address1);
  writeNotNull('Address2', instance.address2);
  writeNotNull('City', instance.city);
  writeNotNull('Zip', instance.zip);
  writeNotNull('State', instance.state);
  writeNotNull('Country', instance.country);
  writeNotNull('Type', instance.type);
  return val;
}

Email _$EmailFromJson(Map<String, dynamic> json) {
  return Email(
    address: json['Address'] as String,
    name: json['Name'] as String,
    type: json['Type'] as String,
  );
}

Map<String, dynamic> _$EmailToJson(Email instance) {
  final val = <String, dynamic>{
    'Address': instance.address,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Name', instance.name);
  writeNotNull('Type', instance.type);
  return val;
}

PersonalImage _$PersonalImageFromJson(Map<String, dynamic> json) {
  return PersonalImage(
    photo: json['Photo'] as String,
    photoUrl: json['PhotoUrl'] as String,
    title: json['Title'] as String,
    business: json['Business'] as String,
  );
}

Map<String, dynamic> _$PersonalImageToJson(PersonalImage instance) {
  final val = <String, dynamic>{
    'Photo': instance.photo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('PhotoUrl', instance.photoUrl);
  writeNotNull('Title', instance.title);
  writeNotNull('Business', instance.business);
  return val;
}
