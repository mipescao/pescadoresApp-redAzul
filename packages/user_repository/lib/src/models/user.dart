import 'package:equatable/equatable.dart';

class User extends Equatable {
  // const User(this.id);
  const User({
    required this.id
  });
  final String id;



  static const empty = User(id: '');
  
  bool get isNotEmpty => this != User.empty;

    @override
  List<Object> get props => [id];
}
