import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _percentages = [34, 42, 24];
  List<int> get percentages => _percentages;
  set percentages(List<int> _value) {
    _percentages = _value;
  }

  void addToPercentages(int _value) {
    _percentages.add(_value);
  }

  void removeFromPercentages(int _value) {
    _percentages.remove(_value);
  }

  void removeAtIndexFromPercentages(int _index) {
    _percentages.removeAt(_index);
  }

  void updatePercentagesAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _percentages[_index] = updateFn(_percentages[_index]);
  }

  void insertAtIndexInPercentages(int _index, int _value) {
    _percentages.insert(_index, _value);
  }

  int _welcomeCircleDiameter = 350;
  int get welcomeCircleDiameter => _welcomeCircleDiameter;
  set welcomeCircleDiameter(int _value) {
    _welcomeCircleDiameter = _value;
  }

  List<String> _chipChoices = ['Type 1', 'Type 2', 'Gestational'];
  List<String> get chipChoices => _chipChoices;
  set chipChoices(List<String> _value) {
    _chipChoices = _value;
  }

  void addToChipChoices(String _value) {
    _chipChoices.add(_value);
  }

  void removeFromChipChoices(String _value) {
    _chipChoices.remove(_value);
  }

  void removeAtIndexFromChipChoices(int _index) {
    _chipChoices.removeAt(_index);
  }

  void updateChipChoicesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _chipChoices[_index] = updateFn(_chipChoices[_index]);
  }

  void insertAtIndexInChipChoices(int _index, String _value) {
    _chipChoices.insert(_index, _value);
  }

  String _selectedType = '';
  String get selectedType => _selectedType;
  set selectedType(String _value) {
    _selectedType = _value;
  }

  String _selectedTile = '';
  String get selectedTile => _selectedTile;
  set selectedTile(String _value) {
    _selectedTile = _value;
  }

  bool _devicePaired = false;
  bool get devicePaired => _devicePaired;
  set devicePaired(bool _value) {
    _devicePaired = _value;
  }

  int _daysScale = 7;
  int get daysScale => _daysScale;
  set daysScale(int _value) {
    _daysScale = _value;
  }

  List<int> _chartX = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> get chartX => _chartX;
  set chartX(List<int> _value) {
    _chartX = _value;
  }

  void addToChartX(int _value) {
    _chartX.add(_value);
  }

  void removeFromChartX(int _value) {
    _chartX.remove(_value);
  }

  void removeAtIndexFromChartX(int _index) {
    _chartX.removeAt(_index);
  }

  void updateChartXAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _chartX[_index] = updateFn(_chartX[_index]);
  }

  void insertAtIndexInChartX(int _index, int _value) {
    _chartX.insert(_index, _value);
  }

  List<int> _chartY = [0, 9, 22, 66, 84, 72, 60, 74, 91, 86, 67];
  List<int> get chartY => _chartY;
  set chartY(List<int> _value) {
    _chartY = _value;
  }

  void addToChartY(int _value) {
    _chartY.add(_value);
  }

  void removeFromChartY(int _value) {
    _chartY.remove(_value);
  }

  void removeAtIndexFromChartY(int _index) {
    _chartY.removeAt(_index);
  }

  void updateChartYAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _chartY[_index] = updateFn(_chartY[_index]);
  }

  void insertAtIndexInChartY(int _index, int _value) {
    _chartY.insert(_index, _value);
  }

  int _avgLevel = 157;
  int get avgLevel => _avgLevel;
  set avgLevel(int _value) {
    _avgLevel = _value;
  }

  String _email = '';
  String get email => _email;
  set email(String _value) {
    _email = _value;
  }

  String _password = '';
  String get password => _password;
  set password(String _value) {
    _password = _value;
  }

  String _displayname = '';
  String get displayname => _displayname;
  set displayname(String _value) {
    _displayname = _value;
  }
}
