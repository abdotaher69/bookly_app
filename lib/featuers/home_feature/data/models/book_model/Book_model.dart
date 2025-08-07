import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "4MlcEAAAQBAJ"
/// etag : "4srHicf02SA"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/4MlcEAAAQBAJ"
/// volumeInfo : {"title":"Programming Languages: Concepts and Implementation","authors":["Saverio Perugini"],"publisher":"Jones & Bartlett Learning","publishedDate":"2021-12-02","description":"Programming Languages: Concepts and Implementation teaches language concepts from two complementary perspectives: implementation and paradigms. It covers the implementation of concepts through the incremental construction of a progressive series of interpreters in Python, and Racket Scheme, for purposes of its combined simplicity and power, and assessing the differences in the resulting languages.","industryIdentifiers":[{"type":"ISBN_13","identifier":"9781284222722"},{"type":"ISBN_10","identifier":"1284222721"}],"readingModes":{"text":false,"image":true},"pageCount":889,"printType":"BOOK","categories":["Computers"],"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.1.2.0.preview.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=4MlcEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=4MlcEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=4MlcEAAAQBAJ&pg=PA15&dq=programming&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com.eg/books?id=4MlcEAAAQBAJ&dq=programming&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Programming_Languages_Concepts_and_Imple.html?hl=&id=4MlcEAAAQBAJ"}
/// saleInfo : {"country":"EG","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"EG","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false},"pdf":{"isAvailable":true,"acsTokenLink":"http://books.google.com.eg/books/download/Programming_Languages_Concepts_and_Imple-sample-pdf.acsm?id=4MlcEAAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=4MlcEAAAQBAJ&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"Saverio Perugini. Style of <b>Programming</b> Purity Indicates (Near-)Pure Language(s) Functional No provision for side effect Haskell <b>programming</b> Logic/declarative <b>programming</b> Object-oriented <b>programming</b> No provision for control Mercury No&nbsp;..."}

class BookModel {
  BookModel({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo, 
      this.searchInfo,});

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;
BookModel copyWith({  String? kind,
  String? id,
  String? etag,
  String? selfLink,
  VolumeInfo? volumeInfo,
  SaleInfo? saleInfo,
  AccessInfo? accessInfo,
  SearchInfo? searchInfo,
}) => BookModel(  kind: kind ?? this.kind,
  id: id ?? this.id,
  etag: etag ?? this.etag,
  selfLink: selfLink ?? this.selfLink,
  volumeInfo: volumeInfo ?? this.volumeInfo,
  saleInfo: saleInfo ?? this.saleInfo,
  accessInfo: accessInfo ?? this.accessInfo,
  searchInfo: searchInfo ?? this.searchInfo,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }

}