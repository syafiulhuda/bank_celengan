import 'package:bank_celengan/biller/models/biller_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'biller_state.dart';

class BillerCubit extends Cubit<BillerState> {
  BillerCubit() : super(BillerInitial());

  Future<void> getBillers() async {
    try {
      emit(BillerLoading());

      final response =
          await http.get(Uri.parse('http://localhost:8080/transaction/biller'));

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        List<Biller> billers = [];

        for (var billerData in jsonData['data']) {
          Biller biller = Biller(
            billerID: billerData['BillerID'],
            name: billerData['Name'],
          );
          billers.add(biller);
        }

        emit(BillerLoaded(billers));
      } else {
        emit(BillerError('Failed to load billers: ${response.statusCode}'));
      }
    } catch (e) {
      emit(BillerError('Failed to load billers: $e'));
    }
  }
}
