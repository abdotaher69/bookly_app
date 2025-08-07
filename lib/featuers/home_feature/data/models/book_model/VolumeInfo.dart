import 'IndustryIdentifiers.dart';
import 'ReadingModes.dart';
import 'PanelizationSummary.dart';
import 'ImageLinks.dart';

/// title : "Programming Languages: Concepts and Implementation"
/// authors : ["Saverio Perugini"]
/// publisher : "Jones & Bartlett Learning"
/// publishedDate : "2021-12-02"
/// description : "Programming Languages: Concepts and Implementation teaches language concepts from two complementary perspectives: implementation and paradigms. It covers the implementation of concepts through the incremental construction of a progressive series of interpreters in Python, and Racket Scheme, for purposes of its combined simplicity and power, and assessing the differences in the resulting languages."
/// industryIdentifiers : [{"type":"ISBN_13","identifier":"9781284222722"},{"type":"ISBN_10","identifier":"1284222721"}]
/// readingModes : {"text":false,"image":true}
/// pageCount : 889
/// printType : "BOOK"
/// categories : ["Computers"]
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : false
/// contentVersion : "0.1.2.0.preview.1"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=4MlcEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=4MlcEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com.eg/books?id=4MlcEAAAQBAJ&pg=PA15&dq=programming&hl=&cd=1&source=gbs_api"
/// infoLink : "http://books.google.com.eg/books?id=4MlcEAAAQBAJ&dq=programming&hl=&source=gbs_api"
/// canonicalVolumeLink : "https://books.google.com/books/about/Programming_Languages_Concepts_and_Imple.html?hl=&id=4MlcEAAAQBAJ"

class VolumeInfo {
  VolumeInfo({
      this.title, 
      this.authors, 
      this.publisher, 
      this.publishedDate, 
      this.description, 
      this.industryIdentifiers, 
      this.readingModes, 
      this.pageCount, 
      this.printType, 
      this.categories, 
      this.maturityRating, 
      this.allowAnonLogging, 
      this.contentVersion, 
      this.panelizationSummary, 
      this.imageLinks, 
      this.language, 
      this.previewLink, 
      this.infoLink, 
      this.canonicalVolumeLink,});

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = json['readingModes'] != null ? ReadingModes.fromJson(json['readingModes']) : null;
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories = json['categories'] != null ? json['categories'].cast<String>() : [];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null ? PanelizationSummary.fromJson(json['panelizationSummary']) : null;
    imageLinks = json['imageLinks'] != null ? ImageLinks.fromJson(json['imageLinks']) : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;
VolumeInfo copyWith({  String? title,
  List<String>? authors,
  String? publisher,
  String? publishedDate,
  String? description,
  List<IndustryIdentifiers>? industryIdentifiers,
  ReadingModes? readingModes,
  int? pageCount,
  String? printType,
  List<String>? categories,
  String? maturityRating,
  bool? allowAnonLogging,
  String? contentVersion,
  PanelizationSummary? panelizationSummary,
  ImageLinks? imageLinks,
  String? language,
  String? previewLink,
  String? infoLink,
  String? canonicalVolumeLink,
}) => VolumeInfo(  title: title ?? this.title,
  authors: authors ?? this.authors,
  publisher: publisher ?? this.publisher,
  publishedDate: publishedDate ?? this.publishedDate,
  description: description ?? this.description,
  industryIdentifiers: industryIdentifiers ?? this.industryIdentifiers,
  readingModes: readingModes ?? this.readingModes,
  pageCount: pageCount ?? this.pageCount,
  printType: printType ?? this.printType,
  categories: categories ?? this.categories,
  maturityRating: maturityRating ?? this.maturityRating,
  allowAnonLogging: allowAnonLogging ?? this.allowAnonLogging,
  contentVersion: contentVersion ?? this.contentVersion,
  panelizationSummary: panelizationSummary ?? this.panelizationSummary,
  imageLinks: imageLinks ?? this.imageLinks,
  language: language ?? this.language,
  previewLink: previewLink ?? this.previewLink,
  infoLink: infoLink ?? this.infoLink,
  canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['authors'] = authors;
    map['publisher'] = publisher;
    map['publishedDate'] = publishedDate;
    map['description'] = description;
    if (industryIdentifiers != null) {
      map['industryIdentifiers'] = industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['pageCount'] = pageCount;
    map['printType'] = printType;
    map['categories'] = categories;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }
    if (imageLinks != null) {
      map['imageLinks'] = imageLinks?.toJson();
    }
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }

}