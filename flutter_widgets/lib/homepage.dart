import 'package:flutter/material.dart';
import 'package:flutter_widgets/layoutwidgets/w_ly_aspectrationpage.dart';
import 'package:flutter_widgets/layoutwidgets/w_ly_expandflexible.dart';
import 'package:flutter_widgets/layoutwidgets/w_ly_fracitonalsizedbox.dart';
import 'package:flutter_widgets/layoutwidgets/w_ly_layoutbuilderpage.dart';
import 'package:flutter_widgets/layoutwidgets/w_ly_mediaquerypage.dart';
import 'package:flutter_widgets/layoutwidgets/w_ly_orientationbuilderpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              LabelWidget(label: "Media Query", widget: WLyMediaQueryPage()),
              LabelWidget(
                  label: "Orientation Builder",
                  widget: WLyOrientationBuilderPage()),
              LabelWidget(
                  label: "Expand Flexible", widget: WLyExpandFlexibPage()),
              LabelWidget(
                  label: "Layout Builder", widget: WLayoutBuilderPage()),
              LabelWidget(
                  label: "Fraction Sized Box",
                  widget: WLyFractionallySizeBoxPage()),
              LabelWidget(
                  label: "Aspect Ratio", widget: WLyAspectRationWidgetPage())
            ],
          ),
        ),
      ),
    );
  }
}

class LabelWidget extends StatelessWidget {
  final String label;
  final Widget widget;

  const LabelWidget({super.key, required this.label, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              //see https://www.youtube.com/watch?v=CylXr3AF3uU
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade900,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => widget));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  label,
                  style: const TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
