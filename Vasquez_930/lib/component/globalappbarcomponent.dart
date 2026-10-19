import 'package:flutter/material.dart';

class GlobalAppbarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  final Text? title;
  const GlobalAppbarComponent({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff636363),
      title: title,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
