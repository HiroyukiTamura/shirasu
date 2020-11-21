import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/strings.dart';

class ScreenConfigEditing extends StatelessWidget {
  const ScreenConfigEditing({
    @required this.year,
    @required this.month,
    @required this.day,
    Key key,
  }) : super(key: key);

  final int year;
  final int month;
  final int day;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(Strings.BIRTH_DATE_LABEL),
          ),
          body: Center(
            child: Row(
              children: [
                DropdownButtonFormField<int>(
                  onChanged: _onChange,
                  items: [for (var i = 1900; i < 2021; i += 1) i]
                      .map((year) => DropdownMenuItem(
                            value: year,
                            child: Text(year.toString()),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      );

  void _onChange(int index) {}
}
