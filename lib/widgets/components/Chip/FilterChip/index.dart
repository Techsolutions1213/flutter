/*
 * @Author: xiaojia.dxj
 * @Date: 2018-12-20 10:19:55 
 * @Last Modified by: xiaojia.dxj
 * @Last Modified time: 2018-12-21 10:25:22
 */
import 'package:flutter/material.dart';
import '../../../../common/widget_demo.dart';
import 'demo.dart';

const String content0 = '''
### **简介**
> 通过使用标签或者描述性词语来过滤内容
- FilterChip是checkbox或switch widget 的替换品。

''';
const String content1 = '''
### **基本用法**
''';

class Demo extends StatefulWidget {
  static const String routeName = '/components/Chip/FilterChip';
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
        contentList: [
          content0,
          content1,
          FilterChipDemo(),
        ],
        codeUrl: 'components/Chip/FilterChip/demo.dart',
        docUrl:
            'https://docs.flutter.io/flutter/material/FilterChip-class.html',
        title: 'FilterChip');
  }
}
