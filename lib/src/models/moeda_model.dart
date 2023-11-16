import 'package:equatable/equatable.dart';

class MoedaModel extends Equatable {
  final String name;
  final String code;

  const MoedaModel({
    required this.name,
    required this.code,
  });

  factory MoedaModel.init() {
    return const MoedaModel(code: '', name: '');
  }

  @override
  List<Object?> get props => [name, code];
}
