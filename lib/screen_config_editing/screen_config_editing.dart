import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/viewmodel/viewmodel_edit_config.dart';

final _viewModelProvider =
    ChangeNotifierProvider.family<ViewModelEditConfig, BirthDateIntentData>(
        (ref, data) {
  return ViewModelEditConfig(data);
});

class ScreenConfigEditing extends HookWidget {
  const ScreenConfigEditing({
    @required this.intentData,
    Key key,
  }) : super(key: key);

  final BirthDateIntentData intentData;

  @override
  Widget build(BuildContext context) {
    final viewModel = useProvider(_viewModelProvider(intentData));
    final dateList = SelectedDateData.getDateList(viewModel.data.dateListSize);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.BIRTH_DATE_LABEL),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Row(
            children: [
              DropdownButton<int>(
                value:
                    SelectedDateData.yearList[viewModel.data.selectedYearIndex],
                onChanged: viewModel.onChangeYear,
                items: SelectedDateData.yearList
                    .map((year) => DropdownMenuItem(
                          value: year,
                          child: Text(year.toString()),
                        ))
                    .toList(),
              ),
              DropdownButton<int>(
                value: SelectedDateData
                    .monthList[viewModel.data.selectedMonthIndex],
                onChanged: viewModel.onChangeMonth,
                items: SelectedDateData.monthList
                    .map((month) => DropdownMenuItem(
                          value: month,
                          child: Text(month.toString()),
                        ))
                    .toList(),
              ),
              DropdownButton<int>(
                value: dateList[viewModel.data.selectedDateIndex],
                onChanged: viewModel.onChangeDate,
                items: dateList
                    .map((date) => DropdownMenuItem(
                          value: date,
                          child: Text(date.toString()),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
