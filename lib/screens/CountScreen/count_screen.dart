import 'package:count_point/screens/CountScreen/cubit/counter_cubit.dart';
import 'package:count_point/screens/CountScreen/cubit/counter_state.dart';
import 'package:count_point/screens/CountScreen/widget/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:count_point/core/utils/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountPointScreen extends StatelessWidget {
  const CountPointScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Counter Point"),
        backgroundColor: Colors.orange,
      ),
      body: BlocBuilder<CounterACubit, CounterState>(
                    builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const VerticalSize(2),
                              const Text("Player A",
                                  style: TextStyle(
                                      fontSize: 28, fontWeight: FontWeight.w600)),
                              const VerticalSize(1.5),
                              Text(
                                "${context.read<CounterACubit>().teamACount}",
                                style: const TextStyle(
                                    fontSize: 90, fontWeight: FontWeight.w400),
                              ),
                              const VerticalSize(1.5),
                              for (int i = 1; i <= 3; i++)
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: ElevatedButton(
                                      onPressed: () {
                                        context
                                            .read<CounterACubit>()
                                            .increment(teamName: "A", plus: i);
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors
                                                    .orange), // Background color
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10), // Border radius
                                            // You can also specify a border color if needed:
                                            // side: BorderSide(color: Colors.red),
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Add $i point",
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )),
                                ),
                            ],
                          ),
                        ),
                      
                    
                    Container(
                      width: 2,
                      color: Colors.grey,
                      height: screenH / 2,
                    ),
                    Expanded(
                      child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const VerticalSize(2),
                              const Text("Player B",
                                  style: TextStyle(
                                      fontSize: 28, fontWeight: FontWeight.w600)),
                              const VerticalSize(1.5),
                              Text(
                                "${context.read<CounterACubit>().teamBCount}",
                                style: const TextStyle(
                                    fontSize: 90, fontWeight: FontWeight.w400),
                              ),
                              const VerticalSize(1.5),
                              for (int i = 1; i <= 3; i++)
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: ElevatedButton(
                                      onPressed: () {
                                        context
                                            .read<CounterACubit>()
                                            .increment(teamName: "B", plus: i);
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors
                                                    .orange), // Background color
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10), // Border radius
                                            // You can also specify a border color if needed:
                                            // side: BorderSide(color: Colors.red),
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Add $i point",
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )),
                                ),
                            ],
                          
                      ),
                    )
                  ],
                ),
                VerticalSize(5) ,
                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: ElevatedButton(
                                      onPressed: () {
                                        context
                                            .read<CounterACubit>()
                                            .increment(teamName: "A", plus: - context.read<CounterACubit>().teamACount);
                                            context
                                            .read<CounterACubit>()
                                            .increment(teamName: "B", plus: - context.read<CounterACubit>().teamBCount);
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors
                                                    .orange), // Background color
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10), // Border radius
                                            // You can also specify a border color if needed:
                                            // side: BorderSide(color: Colors.red),
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        "Reset",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )),
                                ),
                // const Spacer()
              ],
            ),
          );
        },
      ),
    ));
  }
}
