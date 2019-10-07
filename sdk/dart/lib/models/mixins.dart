import 'package:json_annotation/json_annotation.dart';
import 'library.dart';

mixin TypedObjectMixin {
  @JsonKey(includeIfNull: true, name: 'Type', nullable: false)
  String type; //`json:"Type,omitempty"`
}

mixin DigitalSelfieUpdatesMixin {
  @JsonKey(includeIfNull: true, name: 'Id', nullable: false)
  String id; //`json:"ID,omitempty"`
  @JsonKey(
      includeIfNull: false,
      name: 'LastUpdates',
      fromJson: dateTimeFromEpochUs,
      toJson: dateTimeToEpochUs)
  DateTime lastUpdates; //`json:"LastUpdates,omitempty"`
}

mixin DigitalSelfieReadOnlyMixin {
  @JsonKey(includeIfNull: true, name: 'Id_User', nullable: false)
  String userId; //`json:"Id_User,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Relations', nullable: true)
  List<String> relations; //`json:"Relations,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Relation', nullable: true)
  String relation; //`json:"Relation,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Muted', nullable: true)
  bool muted; //`json:"Muted,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Credentials', nullable: true)
  String credentials; //`json:"Credentials,omitempty"`
  @JsonKey(includeIfNull: false, name: 'ApplicationId', nullable: true)
  String applicationId; //`json:"ApplicationId,omitempty"`
  @JsonKey(
      includeIfNull: false,
      name: 'Deleted',
      fromJson: dateTimeFromEpochUs,
      toJson: dateTimeToEpochUs)
  DateTime deleted; //`json:"Deleted,omitempty"`
  @JsonKey(
      includeIfNull: false,
      name: 'Ttl',
      fromJson: dateTimeFromEpochUs,
      toJson: dateTimeToEpochUs)
  DateTime ttl; //`json:"ttl,omitempty"`
}

mixin DigitalSelfieWritableMixin {
  @JsonKey(includeIfNull: false, name: 'Company', nullable: true)
  String innerCompany; //`json:"Company,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Title', nullable: true)
  String innerTitle; //`json:"Title,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Name', nullable: true)
  String innerName; //`json:"Name, omitempty"`
  @JsonKey(includeIfNull: false, name: 'FirstName', nullable: false)
  String innerFirstName; //`json:"FirstName,omitempty"`
  @JsonKey(includeIfNull: false, name: 'MiddleName', nullable: true)
  String innerMiddleName; //`json:"MiddleName,omitempty"`
  @JsonKey(includeIfNull: false, name: 'LastName', nullable: true)
  String innerLastName; //`json:"LastName,omitempty"`

  @JsonKey(includeIfNull: true, name: 'Nickname', nullable: false)
  String innerNickname; //`json:"Nickname,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Suffix', nullable: true)
  String suffix; //`json:"Suffix,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Salutation', nullable: true)
  String salutation; //`json:"Salutation,omitempty"`
  @JsonKey(includeIfNull: false, name: 'HashTags', nullable: true)
  String hashTags; //`json:"HashTags,omitempty"`

  @JsonKey(includeIfNull: false, name: 'Photo', nullable: true)
  String photo; //`json:"Photo,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Phone', nullable: true)
  String innerPhone; //`json:"Phone,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Email', nullable: true)
  String innerEmail; //`json:"Email,omitempty"`

  @JsonKey(includeIfNull: false, name: 'Phones', nullable: true)
  List<Phone> innerPhones;
  @JsonKey(includeIfNull: false, name: 'Emails', nullable: true)
  List<Email> innerEmails; //`json:"Emails,omitempty"`
  @JsonKey(includeIfNull: false, name: 'SocialProfiles', nullable: true)
  List<SocialProfile> innerSocialProfiles; //`json:"SocialProfiles,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Websites', nullable: true)
  List<Website> innerWebsites; //`json:"Websites,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Addresses', nullable: true)
  List<Address> innerAddresses; //`json:"Addresses,omitempty"`

  @JsonKey(includeIfNull: false, name: 'PersonalImage', nullable: true)
  PersonalImage personalImage;

  @JsonKey(includeIfNull: false, name: 'LockId', nullable: true)
  String lockId; //`json:",omitempty"`

  String _emptyString = "";

  @JsonKey(ignore: true)
  List<Phone> get phones {
    if (innerPhones == null) {
      innerPhones = new List<Phone>();
    }

    return innerPhones;
  }

  @JsonKey(ignore: true)
  List<Email> get emails {
    if (innerEmails == null) {
      innerEmails = new List<Email>();
    }

    return innerEmails;
  }

  @JsonKey(ignore: true)
  List<Address> get addresses {
    if (innerAddresses == null) {
      innerAddresses = new List<Address>();
    }

    return innerAddresses;
  }

  @JsonKey(ignore: true)
  List<SocialProfile> get socialProfiles {
    if (innerSocialProfiles == null) {
      innerSocialProfiles = new List<SocialProfile>();
    }

    return innerSocialProfiles;
  }

  @JsonKey(ignore: true)
  String get email {
    String result = _emptyString;
    if (emails.length > 0) {
      result = emails[0].address;
    }
    return null == result ? _emptyString : result;
  }

  @JsonKey(ignore: true)
  set email(String email) {
    if (emails.length > 0) {
      emails[0].address = email;
    } else {
      emails.add(Email(address: email));
    }
  }

  @JsonKey(ignore: true)
  String get phone {
    String result = _emptyString;
    if (phones.length > 0) {
      result =  phones[0].number;
    }
    return null == result ? _emptyString : result;
  }

  @JsonKey(ignore: true)
  set phone(String phone) {
    if (phones.length > 0) {
      phones[0].number = phone;
    } else {
      phones.add(Phone(number: phone));
    }
  }

  @JsonKey(ignore: true)
  Address get address {
    if (addresses != null || addresses.length > 0) {
      return addresses[0];
    }
    return null;
  }

  @JsonKey(ignore: true)
  String get formattedAddress {
    Address address = this.address;
    if (address == null) {
      return _emptyString;
    }

    return '${address.address1} ' +
        '${address.address2 != "" ? ", " : ""}${address.address2}' +
        '${address.city != "" ? ", " : ""}${address.city}' +
        '${address.state != "" ? ", " : ""}${address.state}' +
        ' ${address.zip}';
  }

  @JsonKey(ignore: true)
  set address(Address address) {
    if (addresses.length > 0) {
      addresses[0] = address;
    } else {
      addresses.add(address);
    }
  }

  @JsonKey(ignore: true)
  String get capitalizedInitials {
    String result = "";

    if (firstName?.isNotEmpty == true) {
      result += firstName[0].toUpperCase();
    }

    if (lastName?.isNotEmpty == true) {
      result += lastName[0].toUpperCase();
    }

    if (result == "") {
      if (name?.isNotEmpty == true) {
        var parts = name.split(" ");
        result += parts[0][0].toUpperCase();

        if (parts.length == 2) {
          result += parts[1][0].toUpperCase();
        }
      }
    }

    return result;
  }

  @JsonKey(ignore: true)
  String get firstName {
    if (innerFirstName?.isNotEmpty == true) {
      return innerFirstName;
    }

    if (innerName?.isNotEmpty == true) {
      var parts = innerName.split(" ");
      innerFirstName = parts[0];
      return innerFirstName;
    }

    return _emptyString;
  }

  @JsonKey(ignore: true)
  set firstName(String name) {
    innerFirstName = name;
  }

  @JsonKey(ignore: true)
  String get middleName {
    if (innerMiddleName?.isNotEmpty == true) {
      return innerMiddleName;
    }

    return _emptyString;
  }

  @JsonKey(ignore: true)
  set middleName(String name) {
    innerMiddleName = name;
  }

  @JsonKey(ignore: true)
  String get lastName {
    if (innerLastName?.isNotEmpty == true) {
      return innerLastName;
    }

    if (innerName?.isNotEmpty == true) {
      var parts = innerName.split(" ");

      if (innerName.length > parts[0].length + 1) {
        innerLastName = innerName.substring(parts[0].length + 1);
      }
      return innerLastName;
    }

    return _emptyString;
  }

  @JsonKey(ignore: true)
  set lastName(String name) {
    innerLastName = name;
  }

  @JsonKey(ignore: true)
  String get name {
    if (innerName?.isNotEmpty == true) {
      return innerName;
    }

    innerName = "${firstName}" +
        '${middleName != "" ? " " + middleName : ""}' +
        '${lastName != "" ? " " + lastName : ""}';

    return innerName;
  }

  @JsonKey(ignore: true)
  set name(String name) {
    innerName = name;
  }

  @JsonKey(ignore: true)
  List<Website> get websites {
    if (innerWebsites == null) {
      innerWebsites = new List<Website>();
    }
    return innerWebsites;
  }

  @JsonKey(ignore: true)
  String get website {
    String result = _emptyString;
    if (websites.length > 0) {
      result = websites[0].url;
    }

    return null == result ? _emptyString : result;
  }

  @JsonKey(ignore: true)
  set website(String website) {
    if (websites.length > 0) {
      websites[0].url = website;
    } else {
      websites.add(Website(url: website));
    }
  }

  @JsonKey(ignore: true)
  get nickname {
    return (innerNickname == null) ? _emptyString : innerNickname;
  }

  @JsonKey(ignore: true)
  set nickname(String nickname)  {
    String value = nickname == null ? _emptyString : nickname;
    if (value.startsWith("@")) {
      value = value.substring(1);
    }
    innerNickname = value;
  }

  @JsonKey(ignore: true)
  String get company {
    if (innerCompany != null) {
      return innerCompany;
    }
    return _emptyString;
  }

  @JsonKey(ignore: true)
  set company(String company) {
    if (company != null) {
      innerCompany = company;
    }
  }

  @JsonKey(ignore: true)
  String get title {
    if (innerTitle != null) {
      return innerTitle;
    }

    return _emptyString;
  }

  @JsonKey(ignore: true)
  set title(String title) {
    if (title != null)
      innerTitle = title;
  }

  @JsonKey(ignore: true)
  bool get hasAvatar {
    return personalImage?.photoUrl?.isNotEmpty == true;
  }

  @JsonKey(ignore: true)
  String get avatar {
    return personalImage?.photoUrl;
  }

  @JsonKey(ignore: true)
  String get constructedFullName {
    innerName = "${firstName}" +
        '${middleName != "" ? " " + middleName : ""}' +
        '${lastName != "" ? " " + lastName : ""}';

    return innerName;
  }
}

class ClaimDigiSelfieMixin {
  @JsonKey(includeIfNull: true, name: 'ID', nullable: false)
  String id; //`json:"ID"`
  @JsonKey(includeIfNull: false, name: 'Name', nullable: true)
  String name; //`json:"Name,omitempty"`
  @JsonKey(includeIfNull: false, name: 'FirstName', nullable: false)
  String firstName; //`json:"FirstName,omitempty"`
  @JsonKey(includeIfNull: false, name: 'LastName', nullable: true)
  String lastName; //`json:"LastName,omitempty"`
  @JsonKey(includeIfNull: true, name: 'Nickname', nullable: false)
  String nickname; //`json:"Nickname,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Suffix', nullable: true)
  String suffix; //`json:"Suffix,omitempty"`
  @JsonKey(includeIfNull: false, name: 'HashTags', nullable: true)
  String hashTags; //`json:"HashTags,omitempty"`

  @JsonKey(includeIfNull: false, name: 'Photo', nullable: true)
  String photo; //`json:"Photo,omitempty"`
  @JsonKey(includeIfNull: true, name: 'Phones', nullable: true)
  List<Phone> phones; //`json:"Phones,omitempty"`
  @JsonKey(includeIfNull: true, name: 'SocialProfiles', nullable: true)
  List<SocialProfile> socialProfiles; //`json:"SocialProfiles,omitempty"`
  @JsonKey(includeIfNull: true, name: 'Websites', nullable: true)
  List<Website> websites; //`json:"Websites,omitempty"`
  @JsonKey(includeIfNull: true, name: 'Addresses', nullable: true)
  List<Address> addresses; //`json:"Addresses,omitempty"`
  @JsonKey(includeIfNull: true, name: 'Emails', nullable: true)
  List<Email> emails; //`json:"Emails,omitempty"`

  @JsonKey(includeIfNull: false, name: 'Company', nullable: true)
  String company; //`json:"Company,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Title', nullable: true)
  String title; //`json:"Title,omitempty"`

  @JsonKey(includeIfNull: false, name: 'AuthToken', nullable: true)
  String authToken; //`json:"AuthToken,omitempty"`
}
