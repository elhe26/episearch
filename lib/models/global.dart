class Global {
  final int newConfirmed;
  final int totalConfirmed;
  final int newDeaths;
  final int totalDeaths;
  final int newRecovered;
  final int totalRecovered;

  Global({
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
  });

  factory Global.fromJson(Map<String, dynamic> json) {
    return Global(
      newConfirmed: json["NewConfirmed"] as int,
      totalConfirmed: json["TotalConfirmed"] as int,
      newDeaths: json["NewDeaths"] as int,
      totalDeaths: json["TotalDeaths"] as int,
      newRecovered: json["NewRecovered"] as int,
      totalRecovered: json["TotalRecovered"] as int,
    );
  }
}
