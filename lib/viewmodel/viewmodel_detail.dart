import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/detail_program_data.dart';

class ViewModelDetail extends ValueNotifier<PrgDetailResultBase> {

  ViewModelDetail(this.id) : super(null);

  final _apiClient = ApiClient(Client());
  final String id;

  Future<void> setUpData() async {
    if (value is PrgDetailResultSuccess)
      return;

    try {
      final result = await _apiClient.queryProgramDetail(id);
      value = PrgDetailResultSuccess(result);
    } catch (e) {
      print(e);
      value = const PrgDetailResultError();
    }
  }
}

abstract class PrgDetailResultBase {
  const PrgDetailResultBase();
}

class PrgDetailResultSuccess extends PrgDetailResultBase {
  const PrgDetailResultSuccess(this.programDetailData);

  final ProgramDetailData programDetailData;
}

class PrgDetailResultError extends PrgDetailResultBase {
  const PrgDetailResultError();
}