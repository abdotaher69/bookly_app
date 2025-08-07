/// textSnippet : "Saverio Perugini. Style of <b>Programming</b> Purity Indicates (Near-)Pure Language(s) Functional No provision for side effect Haskell <b>programming</b> Logic/declarative <b>programming</b> Object-oriented <b>programming</b> No provision for control Mercury No&nbsp;..."

class SearchInfo {
  SearchInfo({
      this.textSnippet,});

  SearchInfo.fromJson(dynamic json) {
    textSnippet = json['textSnippet'];
  }
  String? textSnippet;
SearchInfo copyWith({  String? textSnippet,
}) => SearchInfo(  textSnippet: textSnippet ?? this.textSnippet,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = textSnippet;
    return map;
  }

}