import 'package:counter_app/counter_controlller/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../counter_buttons/view.dart';
import '../counter_controlller/cubit.dart';
import '../widgets/text_counter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: BlocBuilder<CounterCubit, CounterStates>(
            builder: (context, state) => TextCounter(
                  counter: cubit.counter,
                )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ButtonsView(),
            ));
          },
          tooltip: 'Increment',
          child: const Icon(Icons.arrow_forward),
        ));
  }
}
