// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class HomeScreens extends StatelessWidget {
//   const HomeScreens({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       extendBodyBehindAppBar:  true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         systemOverlayStyle: const SystemUiOverlayStyle(
//           statusBarBrightness: Brightness.dark,
//           ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(40, 1.2*kToolbarHeight, 40, 20),
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           child: Stack(
//             children: [
//               Align(
//                 alignment: AlignmentDirectional(3, -0.3),
//                 child: Container(
//                   height: 300,
//                   width:  300,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.deepPurple
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: AlignmentDirectional(-3, -0.3),
//                 child: Container(
//                   height: 300,
//                   width:  300,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.deepPurple
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: AlignmentDirectional(0, -1.2),
//                 child: Container(
//                   height: 300,
//                   width:  600,
//                   decoration: BoxDecoration(
//                     color: const Color.fromARGB(255, 241, 134, 85)
//                   ),
//                 ),
//               ),
//               BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 100, sigmaY:  100),
//                 child: Container(
//                   decoration: const BoxDecoration(color:  Colors.transparent),
//                 ),
//               ),
//               SizedBox(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('😶 Hải Dương', style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300, fontSize: 16 ),),
//                     SizedBox(height: 8,),
//                     Text('Good Moring', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 32 ),),
//                     Center(
//                       child: Image.asset(
//                         'assets/1.png',
//                         height: 320,
//                       ),
//                     ),
//                     const Center(
//                       child: Text('21 C', style: TextStyle( color: Colors.white, fontWeight: FontWeight.w600, fontSize: 55 ),),
//                     ),
//                     const Center(
//                       child: Text('THUNDERSTORM', style: TextStyle( color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25 ),),
//                     ),
//                     const SizedBox(height: 5,),
//                     const Center(
//                       child: Text('Friday 16 ~ 09:41am', style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300, fontSize: 16 ),),
//                     ),
//                     const SizedBox(height: 30,),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Row(
//                           children: [
//                             Image.asset('assets/11.png', scale: 8,),
//                             const SizedBox(width:  5,),
//                             const Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text('Sunrise', style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300,)),
//                                 SizedBox(height: 3,),
//                                 Text('05:31 am', style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700)),
//                               ],
//                             ),

//                           ],
//                         ),
//                         SizedBox(width: 32,),
//                         Row(
//                           children: [
//                             Image.asset('assets/12.png', scale: 8,),
//                             const SizedBox(width:  5,),
//                             const Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text('Sunset', style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300,)),
//                                 SizedBox(height: 3,),
//                                 Text('09:41 am', style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700)),
//                               ],
//                             ),

//                           ],
//                         ),
//                       ],
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(vertical: 5),
//                       child: Divider(
//                         color: Colors.grey,
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Row(
//                           children: [
//                             Image.asset('assets/13.png', scale: 8,),
//                             const SizedBox(width:  5,),
//                             const Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text('Temp Max', style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300,)),
//                                 SizedBox(height: 3,),
//                                 Text('12*C', style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700)),
//                               ],
//                             ),

//                           ],
//                         ),
//                         SizedBox(width: 32,),
//                         Row(
//                           children: [
//                             Image.asset('assets/14.png', scale: 8,),
//                             const SizedBox(width:  5,),
//                             const Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text('Temp Min', style: TextStyle( color: Colors.white, fontWeight: FontWeight.w300,)),
//                                 SizedBox(height: 3,),
//                                 Text('8*C', style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700)),
//                               ],
//                             ),

//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_2/bloc/weather_bloc_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

	Widget getWeatherIcon(int code) {
		switch (code) {
		  case >= 200 && < 300 :
		    return Center(
                  child: Image.asset(
                            'assets/1.png',
                            height: 280,
                          ),
                );
			case >= 300 && < 400 :
		    return Center(
                  child: Image.asset(
                            'assets/2.png',
                            height: 280,
                          ),
                );
			case >= 500 && < 600 :
		    return Center(
                  child: Image.asset(
                            'assets/3.png',
                            height: 280,
                          ),
                );
			case >= 600 && < 700 :
		    return Center(
                  child: Image.asset(
                            'assets/4.png',
                            height: 280,
                          ),
                );
			case >= 700 && < 800 :
		    return Center(
                  child: Image.asset(
                            'assets/5.png',
                            height: 280,
                          ),
                );
			case == 800 :
		    return Center(
                  child: Image.asset(
                            'assets/6.png',
                            height: 280,
                          ),
                );
			case > 800 && <= 804 :
		    return Center(
                  child: Image.asset(
                            'assets/7.png',
                            height: 280,
                          ),
                );
		  default:
			return Center(
              child: Image.asset(
                'assets/7.png',
                      height: 280,
              ),
            );
		}
	}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			backgroundColor: Colors.black,
			extendBodyBehindAppBar: true,
			appBar: AppBar(
				backgroundColor: Colors.transparent,
				elevation: 0,
				systemOverlayStyle: const SystemUiOverlayStyle(
					statusBarBrightness: Brightness.dark
				),
			),
			body: Padding(
				padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
				child: SizedBox(
					height: MediaQuery.of(context).size.height,
					child: Stack(
						children: [
							Align(
								alignment: const AlignmentDirectional(3, -0.3),
								child: Container(
									height: 300,
									width: 300,
									decoration: const BoxDecoration(
										shape: BoxShape.circle,
										color: Colors.deepPurple
									),
								),
							),
							Align(
								alignment: const AlignmentDirectional(-3, -0.3),
								child: Container(
									height: 300 ,
									width: 300, 
									decoration: const BoxDecoration(
										shape: BoxShape.circle,
										color: Color(0xFF673AB7)
									),
								),
							),
							Align(
								alignment: const AlignmentDirectional(0, -1.2),
								child: Container(
									height: 300,
									width: 600,
									decoration: const BoxDecoration(
										color: Color(0xFFFFAB40)
									),
								),
							),
							BackdropFilter(
								filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
								child: Container(
									decoration: const BoxDecoration(color: Colors.transparent),
								),
							),
							BlocBuilder<WeatherBlocBloc, WeatherBlocState>(
								builder: (context, state) {
									if(state is WeatherBlocSuccess) {
										return SizedBox(
											width: MediaQuery.of(context).size.width,
											height: MediaQuery.of(context).size.height,
											child: Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													Text(
														'📍 ${state.weather.areaName}',
														style: const TextStyle(
															color: Colors.white,
															fontWeight: FontWeight.w300
														),
													),
													const SizedBox(height: 8),
													const Text(
														'Good Morning',
														style: TextStyle(
															color: Colors.white,
															fontSize: 25,
															fontWeight: FontWeight.bold
														),
													),
													getWeatherIcon(state.weather.weatherConditionCode!),
													Center(
														child: Text(
															'${state.weather.temperature!.celsius!.round()}°C',
															style: const TextStyle(
																color: Colors.white,
																fontSize: 55,
																fontWeight: FontWeight.w600
															),
														),
													),
													Center(
														child: Text(
															state.weather.weatherMain!.toUpperCase(),
															style: const TextStyle(
																color: Colors.white,
																fontSize: 25,
																fontWeight: FontWeight.w500
															),
														),
													),
													const SizedBox(height: 5),
													Center(
														child: Text(
															DateFormat('EEEE dd •').add_jm().format(state.weather.date!),
															style: const TextStyle(
																color: Colors.white,
																fontSize: 16,
																fontWeight: FontWeight.w300
															),
														),
													),
													const SizedBox(height: 30),
													Row(
														mainAxisAlignment: MainAxisAlignment.center,
														children: [
															Row(
																children: [
																	Image.asset(
																		'assets/11.png',
																		scale: 8,
																	),
																	const SizedBox(width: 5),
																	Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			const Text(
																				'Sunrise',
																				style: TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w300
																				),
																			),
																			const SizedBox(height: 3),
																			Text(
																				DateFormat().add_jm().format(state.weather.sunrise!),
																				style: const TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w700
																				),
																			),
																		],
																	)
																],
															),
                              const SizedBox(width: 32),
															Row(
																children: [
																	Image.asset(
																		'assets/12.png',
																		scale: 8,
																	),
																	const SizedBox(width: 5),
																	Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			const Text(
																				'Sunset',
																				style: TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w300
																				),
																			),
																			const SizedBox(height: 3),
																			Text(
																				DateFormat().add_jm().format(state.weather.sunset!),
																				style: const TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w700
																				),
																			),
																		],
																	)
																],
															),
														],
													),
													const Padding(
														padding: EdgeInsets.symmetric(vertical: 5.0),
														child: Divider(
															color: Colors.grey,
														),
													),
													Row(
														mainAxisAlignment: MainAxisAlignment.center,
														children: [
															Row(
																children: [
																	Image.asset(
																		'assets/13.png',
																		scale: 8,
																	),
																	const SizedBox(width: 5),
																	Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			const Text(
																				'Temp Max',
																				style: TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w300
																				),
																			),
																			const SizedBox(height: 3),
																			Text(
																				"${state.weather.tempMax!.celsius!.round()} °C",
																				style: const TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w700
																				),
																			),
																		],
																	)
																]
															),
                              const SizedBox(width: 32),
															Row(
																children: [
																	Image.asset(
																		'assets/14.png',
																		scale: 8,
																	),
																	const SizedBox(width: 5),
																	Column(
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			const Text(
																				'Temp Min',
																				style: TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w300
																				),
																			),
																			const SizedBox(height: 3),
																			Text(
																				"${state.weather.tempMin!.celsius!.round()} °C",
																				style: const TextStyle(
																					color: Colors.white,
																					fontWeight: FontWeight.w700
																				),
																			),
																		],
																	)
																]
															)
														],
													),
												],
											),
										);
									} else {
										return Container();
									}
								},
							)
						],
					),
				),
			),
		);
  }
}
