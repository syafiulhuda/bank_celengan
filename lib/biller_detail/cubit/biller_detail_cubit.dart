import 'package:bank_celengan/biller/models/biller_model.dart';
import 'package:bank_celengan/biller_detail/cubit/biller_detail_state.dart';
import 'package:bank_celengan/biller_detail/models/biller_detail_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BillerDetailCubit extends Cubit<BillerDetailState> {
  BillerDetailCubit() : super(BillerDetailInitial());

  Future<void> getBillers() async {
    try {
      emit(BillerDetailLoading());

      final response =
          await http.get(Uri.parse('http://localhost:8080/transaction/biller'));

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        List<BillerDetail> billersDetail = [];

        for (var billerData in jsonData['data']) {
          BillerDetail biller = BillerDetail(
              billerID: billerData['BillerID'],
              amount: billerData['Amount'],
              name: billerData['Name'],
              accountID: billerData['AccountID'],
              paid: billerData['Paid']);
          // Emit each BillerDetail individually
          emit(BillerDetailLoaded(biller));
        }

        // Optionally, emit a single state indicating all billers loaded
        // emit(BillerDetailLoadedAll(billersDetail));
      } else {
        emit(BillerDetailError(
            'Failed to load billers: ${response.statusCode}'));
      }
    } catch (e) {
      emit(BillerDetailError('Failed to load billers: $e'));
    }
  }
}
