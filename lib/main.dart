import 'package:count_point/screens/CountScreen/count_screen.dart';
import 'package:count_point/screens/CountScreen/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CountPointApp());
}

class CountPointApp extends StatelessWidget {
  const CountPointApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider<CounterACubit>(
          create: (context) => CounterACubit(),
        ),
       
       
      ],
      
      child: const MaterialApp(
        debugShowCheckedModeBanner: false ,
        home: CountPointScreen(),
      ),
    );
  }
}


  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
