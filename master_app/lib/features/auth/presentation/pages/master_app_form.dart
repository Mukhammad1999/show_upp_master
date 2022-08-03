import 'package:flutter/material.dart';
import 'package:master_app/app/index/index.dart';

class MasterFormRegistration extends StatelessWidget {
  const MasterFormRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CurvedAppBar(
        curvature: Curvature.rightToLeft,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: const Center(
        child: Text("MASTER"),
      ),
    );
  }
}
