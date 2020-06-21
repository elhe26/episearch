class Global {
  final int newConfirmed;
  final int totalConfirmed;
  final int newDeaths;
  final int totalDeaths;
  final int newRecovered;
  final int totalRecovered;
  final DateTime date;

  Global({
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
    this.date,
  });

  factory Global.fromJson(Map<String, dynamic> json) {
    return Global(
      newConfirmed: json["NewConfirmed"] as int,
      totalConfirmed: json["TotalConfirmed"] as int,
      newDeaths: json["NewDeaths"] as int,
      totalDeaths: json["TotalDeaths"] as int,
      newRecovered: json["NewRecovered"] as int,
      totalRecovered: json["TotalRecovered"] as int,
      date: json["Date"] as DateTime,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        "NewConfirmed": newConfirmed,
        "TotalConfirmed": totalConfirmed,
        "NewDeaths": newDeaths,
        "TotalDeaths": totalDeaths,
        "NewRecovered": newRecovered,
        "TotalRecovered": totalRecovered,
        "Date": date,
      };
}
