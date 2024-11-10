import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../counter_controlller/cubit.dart';
import '../reset_counter/view.dart';
class ButtonsView extends StatelessWidget {
  const ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CounterCubit>(context);
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
             cubit.increment();
            }, child: const Icon(Icons.add)),
            ElevatedButton(onPressed: (){
             cubit.minus();

            }, child:const Icon(Icons.minimize)),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const  ResetView(),));
            }, child:const  Icon(Icons.restart_alt))

          ],),
      ),
    );

  }
}
