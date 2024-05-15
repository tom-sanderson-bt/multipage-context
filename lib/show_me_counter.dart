import 'package:bloc_context/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowMeCounter extends StatelessWidget {
  const ShowMeCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (builderContext, state) {
          return Center(
            child: Text(
              "${state.counter}",
              style: const TextStyle(fontSize: 52.0),
            ),
          );
        },
      ),
    );
  }
}
