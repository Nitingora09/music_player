import 'package:flutter/cupertino.dart';
import 'package:music_app/Config/Colors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SongAndVolume extends StatefulWidget {
  const SongAndVolume({super.key});

  @override
  State<SongAndVolume> createState() => _SongAndVolumeState();
}

class _SongAndVolumeState extends State<SongAndVolume> {
  var value = 30.0;

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      animationDuration: 1,
      enableLoadingAnimation: true,
      axes: [
        RadialAxis(
          useRangeColorForAxis: true,
          startAngle: 0,
          endAngle: 180,
          canRotateLabels: false,
          interval: 10,
          isInversed: true,
          maximum: 100,
          minimum: 0,
          showAxisLine: true,
          showLabels: false,
          showTicks: false,
          ranges: [
            GaugeRange(
              startValue: 0,
              endValue: value,
              color: primaryColor,
            )
          ],
          pointers: [
            MarkerPointer(
              color: primaryColor,
              value: value,
              onValueChanged: (value) {
                setState(() {
                  value = value;
                });
              },
             enableAnimation: true,
             enableDragging: true,
             markerType: MarkerType.circle,
             markerWidth: 20,
             markerHeight: 20,
            )
          ],
          annotations: [
            GaugeAnnotation(
                horizontalAlignment: GaugeAlignment.center,
                widget: Container(
                  width: 280,
                  height: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    image: DecorationImage(
                      image: AssetImage("assets/images/songandvolume.jpg"),
                    ),
                  ),
                ))
          ],
        )
      ],
    );
  }
}
