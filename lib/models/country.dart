class Country {
  final String country;
  final String countryCode;
  final String slug;
  final int newConfirmed;
  final int totalConfirmed;
  final int newDeaths;
  final int totalDeaths;
  final int newRecovered;
  final int totalRecovered;
  final String date;

  Country({
    this.country,
    this.countryCode,
    this.slug,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
    this.date,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      country: json["Country"] as String,
      countryCode: json["CountryCode"] as String,
      slug: json["Slug"] as String,
      newConfirmed: json["NewConfirmed"] as int,
      totalConfirmed: json["TotalConfirmed"] as int,
      newDeaths: json["NewDeaths"] as int,
      totalDeaths: json["TotalDeaths"] as int,
      newRecovered: json["NewRecovered"] as int,
      totalRecovered: json["TotalRecovered"] as int,
      date: json["Date"] as String,
    );
  }
  Map<String, dynamic> toJson() => <String, dynamic>{
        "Country": country,
        "CountryCode": countryCode,
        "Slug": slug,
        "NewConfirmed": newConfirmed,
        "TotalConfirmed": totalConfirmed,
        "NewDeaths": newDeaths,
        "TotalDeaths": totalDeaths,
        "NewRecovered": newRecovered,
        "TotalRecovered": totalRecovered,
        "Date": date,
      };
}
