import 'package:ecommer_app/theme.dart';
import 'package:flutter/material.dart';

class CustomTabbar extends StatelessWidget {
  final List<String> title;
  final int selectedIndex;
  final Function onTap;
  const CustomTabbar(
      {Key? key,
      required this.title,
      required this.onTap,
      required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: title
            .map((e) => Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: InkWell(
                    onTap: () {
                      onTap(title.indexOf(e));
                    },
                    child: Container(
                        height: 40,
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: subtitleTextColor),
                            color: (title.indexOf(e) == selectedIndex)
                                ? primaryColor
                                : bgColor4,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Text(
                          e,
                          style: (title.indexOf(e) == selectedIndex)
                              ? primaryTextStyle.copyWith(
                                  fontSize: 13, fontWeight: medium)
                              : subtitleTextStyle,
                        )),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
