import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> with AutomaticKeepAliveClientMixin<StatsPage> {
  // Eu faço um with AutomaticKeepAliveClientMixin e sobrescrevo o método
  // get wantKeepAlive retornando true, para que a page não fique sendo carregada
  // toda vez que eu entrar e sair dela...
  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    log('disposed');
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    log('init');
    timer;
  }

  Timer timer = Timer(const Duration(seconds: 2), () => log('finished'));

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const Scaffold(
      body: Center(
        child: Text('Stats'),
      ),
    );
  }
}
