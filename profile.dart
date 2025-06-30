abstract class UserProfile {
  int id = 0;
  String name = '';
  String surname = '';
  String email = '';
  String password = '';
}

abstract class Victim {
  int victim_id = 0;
  String surname = '';
  String name = '';
  DateTime? birth;
  String? birthplace;
  DateTime? death;
  String? deathplace;
  String nationality = '';
  String religion = '';
  String occupation = '';
  bool death_certificate = false;
  String c_camp = '';
  String fate = '';
}

abstract class ConcentrationCamp {
  int camp_id = 0;
  String name = '';
  String location = '';
  String country = '';
  String description = '';
  DateTime? date_opened;
  DateTime? liberation_date;
  String type = '';
  String commander = '';
}

abstract class Commander {
  int commander_id = 0;
  String name = '';
  String surname = '';
  String rank = '';
  DateTime? birth;
  String? birthplace;
  DateTime? death;
  String? deathplace;
  String description = '';
}
