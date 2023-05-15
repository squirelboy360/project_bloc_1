import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_bloc_1/provider/counter_cubit.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(create: (context)=>CounterCubit(),
    child: const  MaterialApp(
        home: Home()
    ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pinkAccent,
        title: const Text('Count App with Bloc'),
      ),
      body:  Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children:[
           const Text('Current Count'),
          const SizedBox(height: 10,),
        BlocBuilder<CounterCubit,CounterState>(
          builder: (context,state){
            return Text(state.numValue.toString(),style: const TextStyle(fontSize: 50),);
          },
       ),
      ])),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            BlocProvider.of<CounterCubit>(context).increment();
          }, backgroundColor: Colors.pinkAccent,elevation: 0,child: const Icon(Icons.add,),),
          const SizedBox(height: 10,),
          FloatingActionButton(onPressed: (){
            BlocProvider.of<CounterCubit>(context).decrement();
          }, backgroundColor: Colors.pinkAccent,elevation: 0,child: const Icon(Icons.exposure_minus_1),)
        ],
      ),
    );
  }
}

