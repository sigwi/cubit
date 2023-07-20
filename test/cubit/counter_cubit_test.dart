import 'package:flutter_test/flutter_test.dart';
import 'package:todo/cubit/counter_cubit.dart';

void main() {
  group(
    'CounterCubit',
    () {
      CounterCubit? counterCubit;

      setUp(() => counterCubit = CounterCubit());

      tearDown(() {
        counterCubit?.close();
      });

      test('Test counter cubit', () {
        expect(
          counterCubit?.state,
          CounterState(counterValue: 0, wasIncremented: false),
        );
      });
    },
  );
}
