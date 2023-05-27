import 'package:flutter/material.dart';
import 'package:flutter_super_html_viewer/flutter_super_html_viewer.dart';
import 'package:privacy_policy_generator_app/data.dart';

class PolicyPage extends StatelessWidget {
  Policy p;
  PolicyPage(this.p, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${p.appName} App Policy"),
        ),
        body: SingleChildScrollView(
          child: HtmlContentViewer(
            htmlContent: p.generatePolicy(),
            initialContentHeight: MediaQuery.of(context).size.height,
            initialContentWidth: MediaQuery.of(context).size.width,
          ),
        ));
  }
}
