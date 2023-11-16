// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../models/moeda_model.dart';

class MoedaState {
  final List<MoedaModel> moedas;

  final MoedaModel moedaIn;
  final MoedaModel moedaOut;

  final String result;

  MoedaState({
    required this.moedas,
    required this.moedaIn,
    required this.moedaOut,
    required this.result,
  });

  factory MoedaState.init() {
    return MoedaState(
      moedaIn: MoedaModel.init(),
      moedaOut: MoedaModel.init(),
      moedas: const [],
      result: '0',
    );
  }

  MoedaState copyWith({
    List<MoedaModel>? moedas,
    MoedaModel? moedaIn,
    MoedaModel? moedaOut,
    String? result,
  }) {
    return MoedaState(
      moedas: moedas ?? this.moedas,
      moedaIn: moedaIn ?? this.moedaIn,
      moedaOut: moedaOut ?? this.moedaOut,
      result: result ?? this.result,
    );
  }
}
