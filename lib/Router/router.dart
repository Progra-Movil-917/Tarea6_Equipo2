import 'package:flutter_tarea6_equipo2/Screens/buscar.dart';
import 'package:flutter_tarea6_equipo2/Screens/home.dart';
import 'package:flutter_tarea6_equipo2/Screens/lista.dart';
import 'package:flutter_tarea6_equipo2/Screens/welcome.dart';
import 'package:go_router/go_router.dart';

final GoRouter mainrouter = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (context, state) => const WelcomeScreen(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomeScreens(),
  ),
  GoRoute(
    path: '/Listabebidas',
    builder: (context, state) => const ListaScreen(),
  ),
  GoRoute(
    path: '/Buscar',
    builder: (context, state) => const BuscarScreen(),
  ),
]);
