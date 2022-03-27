import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_webapp/config/constants.dart';

class CustomDropdown extends StatefulWidget {
  final dynamic initalValue;
  final dynamic selectedValue;
  final List<dynamic> list;
  final dynamic itemValue;
  final dynamic itemLabel;
  final String hint;
  final Function(dynamic) onChanged;
  final String title;
  final bool isEnabled;

  const CustomDropdown({
    Key key,
    this.initalValue,
    @required this.list,
    @required this.itemValue,
    @required this.itemLabel,
    @required this.hint,
    this.isEnabled = true,
    this.onChanged,
    @required this.selectedValue,
    this.title,
  }) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /*final top = Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Text(
        widget.title ?? "",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
      ),
    );*/

    final dropdown = Container(
      padding: EdgeInsets.only(left: 10.0, right: 10),
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.zero,
        color: const Color(0XFFEBEBEB),
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
      ),
      child: DropdownButton(
        underline: Container(),
        icon: SvgPicture.asset(AppImages.icDropdown),
        isExpanded: true,
        hint: Text(widget.hint),
        //icon: SvgPicture.asset(),
        value: widget.selectedValue,
        items: widget.list.map((item) {
          // if(item.runtimeType != Map<String, dynamic>){
          //   toJson();
          // }
          var _item;
          try {
            _item = item.toJson();
          } catch (e) {
            _item = item;
          }
          return DropdownMenuItem(
            child: Text(
              _item[widget.itemLabel],
            ),
            value: _item[widget.itemValue],
          );
        }).toList(),
        onChanged: widget.isEnabled ? widget.onChanged : null,
      ),
    );

    return dropdown;

   /* return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[widget.title == null ? Container() : top, dropdown],
      ),
    );*/
  }
}
