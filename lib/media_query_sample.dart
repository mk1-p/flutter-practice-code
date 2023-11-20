import 'package:flutter/material.dart';


class MediaSample extends StatefulWidget {
  const MediaSample({super.key});

  @override
  State<MediaSample> createState() => _MediaSampleState();
}

class _MediaSampleState extends State<MediaSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text('MediaQuery'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Width : ${MediaQuery.of(context).size.width}'),
            Text('Height : ${MediaQuery.of(context).size.width}'),
            Text('Aspect Ratio : ${MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)}'),
            Text('Orientation : ${MediaQuery.of(context).orientation}'),
          ],
        ),
      ),

    );
  }
}
