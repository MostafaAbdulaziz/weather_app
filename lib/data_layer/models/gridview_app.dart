import 'package:flutter/material.dart';
import 'package:weather/core/utils/global_variable.dart';
import 'package:weather/data_layer/models/data_model.dart';
import 'package:weather/data_layer/models/weather_model.dart';

import '../../presentation_layer/widgets/ListTile_app_widget.dart';

class GridviewApp extends StatelessWidget {
  final int startIndex;
  final WeatherModel weatherModel;
  const GridviewApp({
    super.key,
    required this.startIndex,
    required this.weatherModel,
  });

  @override
  Widget build(BuildContext context) {
    List<DataModel> dataGroup = createDataGroup(weatherModel);
    return SizedBox(
      height: 90,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder:
            (context, index) => ListTileApp(
              text: dataGroup[index + startIndex].text,
              subText: dataGroup[index + startIndex].subText,
              iconColor: dataGroup[index + startIndex].iconColor,
              icon: dataGroup[index + startIndex].icon,
            ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
      ),
    );
  }
}
