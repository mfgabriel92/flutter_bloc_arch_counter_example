import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_arch_counter_app/counter_bloc.dart';
import 'package:test/test.dart';

void main() {
  group('CounterBloc', () {
    CounterBloc bloc;

    setUp(() {
      bloc = CounterBloc();
    });

    test('initial state is 0', () {
      expect(bloc.initialState, 0);
    });

    blocTest(
      'emits [0, 1] when CounterEvent.increment is pressed',
      build: () => bloc,
      act: (bloc) => bloc.add(CounterEvent.increment),
      expect: [0, 1],
    );

    blocTest(
      'emits [0, -1] when CounterEvent.decrement is pressed',
      build: () => bloc,
      act: (bloc) => bloc.add(CounterEvent.decrement),
      expect: [0, -1],
    );
  });
}
