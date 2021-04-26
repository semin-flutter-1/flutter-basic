import 'package:flutter/material.dart';
import 'package:flutter_app/4_26_gridview_sample/model/realtime_arrival_list.dart';

class Subway extends StatelessWidget {
  final RealtimeArrivalList json;

  Subway(this.json);

  @override
  Widget build(BuildContext context) {
    return _buildItem(json);
  }

  Widget _buildItem(RealtimeArrivalList item) {
    return Card(
      child: Column(
        children: [
          Image.network('https://w.namu.la/s/3ca92265fffe4dd38a729df3df7dd41ea3ef12b72383958c8fd0bea79ffaa0331810fb8bea8ba09156d69e5f792eef522dd8eb932389ed972ff233c2c9adb34fa1cd2dba741ea2db2fdfc6800a2dd7f898f301f1eea3554f3c8f2e000d7ffc6071676904bdec7afa2303b05119cc104e',
            fit: BoxFit.cover,
          ),
          Text(item.arvlMsg2),
          Text(item.trainLineNm),
        ],
      ),
    );
  }

}
