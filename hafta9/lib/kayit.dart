class Kayit {
  String isim;
  String link;
  String cumle;
  Kayit(this.isim, this.link, this.cumle);
  Kayit.fromJson(Map<String, dynamic> map)
    : isim = map["isim"],
      link = map["link"],
      cumle = map["cumle"];
  Map<String, dynamic> toJson() {
    return {
      "isim": isim, 
      "link": link, 
      "cumle": cumle
      };
  }
}
