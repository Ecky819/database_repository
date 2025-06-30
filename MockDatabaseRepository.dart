import 'dart:async';
import 'databaseRepository.dart';

class MockDatabaseRepository implements DatabaseRepository {
  List<UserProfile> _userProfiles = [];
  List<Victim> _victims = [];
  List<ConcentrationCamp> _concentrationCamps = [];
  List<Commander> _commanders = [];

  @override
  Future<List<UserProfile>> getUserProfiles() async {
    return _userProfiles;
  }

  @override
  Future<UserProfile?> getUserProfileById(String id) async {
    return _userProfiles.firstWhere(
      (profile) => profile.id == id,
      orElse: () => null,
    );
  }

  @override
  Future<void> createUserProfile(UserProfile profile) async {
    _userProfiles.add(profile);
  }

  @override
  Future<void> updateUserProfile(UserProfile profile) async {
    final index = _userProfiles.indexWhere((p) => p.id == profile.id);
    if (index != -1) {
      _userProfiles[index] = profile;
    }
  }

  @override
  Future<void> deleteUserProfile(String id) async {
    _userProfiles.removeWhere((profile) => profile.id == id);
  }

  @override
  Future<List<Victim>> getVictims() async {
    return _victims;
  }

  @override
  Future<Victim?> getVictimById(String id) async {
    return _victims.firstWhere((victim) => victim.id == id, orElse: () => null);
  }

  @override
  Future<void> createVictim(Victim victim) async {
    _victims.add(victim);
  }

  @override
  Future<void> updateVictim(Victim victim) async {
    final index = _victims.indexWhere((v) => v.id == victim.id);
    if (index != -1) {
      _victims[index] = victim;
    }
  }

  @override
  Future<void> deleteVictim(String id) async {
    _victims.removeWhere((victim) => victim.id == id);
  }

  @override
  Future<List<ConcentrationCamp>> getConcentrationCamps() async {
    return _concentrationCamps;
  }

  @override
  Future<ConcentrationCamp?> getConcentrationCampById(String id) async {
    return _concentrationCamps.firstWhere(
      (camp) => camp.id == id,
      orElse: () => null,
    );
  }

  @override
  Future<void> createConcentrationCamp(ConcentrationCamp camp) async {
    _concentrationCamps.add(camp);
  }

  @override
  Future<void> updateConcentrationCamp(ConcentrationCamp camp) async {
    final index = _concentrationCamps.indexWhere((c) => c.id == camp.id);
    if (index != -1) {
      _concentrationCamps[index] = camp;
    }
  }

  @override
  Future<void> deleteConcentrationCamp(String id) async {
    _concentrationCamps.removeWhere((camp) => camp.id == id);
  }

  @override
  Future<List<Commander>> getCommanders() async {
    return _commanders;
  }

  @override
  Future<Commander?> getCommanderById(String id) async {
    return _commanders.firstWhere(
      (commander) => commander.id == id,
      orElse: () => null,
    );
  }

  @override
  Future<void> createCommander(Commander commander) async {
    _commanders.add(commander);
  }

  @override
  Future<void> updateCommander(Commander commander) async {
    final index = _commanders.indexWhere((c) => c.id == commander.id);
    if (index != -1) {
      _commanders[index] = commander;
    }
  }

  @override
  Future<void> deleteCommander(String id) async {
    _commanders.removeWhere((commander) => commander.id == id);
  }
}
