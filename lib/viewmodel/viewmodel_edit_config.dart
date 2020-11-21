import 'package:flutter/cupertino.dart';
import 'package:shirasu/router/screen_main_route_path.dart';

class ViewModelEditConfig extends ChangeNotifier {
  ViewModelEditConfig(BirthDateIntentData intentData)
      : data = SelectedDateData(
            intentData.year, intentData.month, intentData.date);

  SelectedDateData data;

  void onChangeYear(int value) {
    data.selectedYearIndex = SelectedDateData.yearList.indexOf(value);
    notifyListeners();
  }

  void onChangeMonth(int value) {
    data.selectedMonthIndex = SelectedDateData.monthList.indexOf(value);
    notifyListeners();
  }

  void onChangeDate(int value) {
    final selectedMonth = SelectedDateData.monthList[data.selectedMonthIndex];
    final dateListSize = SelectedDateData.getLastDateInMonth(selectedMonth);
    final dateList = SelectedDateData.getDateList(dateListSize);
    data
      ..selectedDateIndex = dateList.indexOf(value)
      ..dateListSize = dateListSize;
    notifyListeners();
  }
}

class SelectedDateData {
  SelectedDateData(int year, int month, int date) {
    selectedYearIndex = yearList.indexOf(year);
    selectedMonthIndex = monthList.indexOf(month);
    dateListSize = getLastDateInMonth(month);
    selectedDateIndex = getDateList(dateListSize).indexOf(date);
  }

  static final yearList = [for (var i = 1900; i <= 2020; i += 1) i];
  static final monthList = [for (var i = 1; i <= 12; i += 1) i];

  int selectedYearIndex;
  int selectedMonthIndex;
  int selectedDateIndex;
  int dateListSize;

  static int getLastDateInMonth(int month) => DateTime(2000, month + 1, 0).day;

  static List<int> getDateList(int listSize) =>
      [for (var i = 1; i <= listSize; i += 1) i];
}
