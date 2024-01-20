import 'package:dominoes/theme/app_assets.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    required this.globalKey,
    super.key,
  });
  final GlobalKey<ScaffoldState> globalKey;
  @override
  Size get preferredSize => const Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          size: 40,
        ),
        onPressed: () => globalKey.currentState?.openDrawer(),
      ),
      centerTitle: true,
      title: SizedBox(
        width: MediaQuery.sizeOf(context).width / 3,
        child: isDarkMode ? AppAssets.appLogoWhite : AppAssets.appLogo,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width / 5,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  isDarkMode
                      ? Theme.of(context).primaryColorLight
                      : Theme.of(context).primaryColorDark,
                ),
              ),
              child: Icon(
                Icons.add,
                color: isDarkMode
                    ? Theme.of(context).primaryColorDark
                    : Theme.of(context).primaryColorLight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
