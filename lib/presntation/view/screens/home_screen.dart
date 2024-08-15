import 'package:coffee_dashboard/config/routes/app_routes.dart';
import 'package:coffee_dashboard/core/utils/app_colors.dart';
import 'package:coffee_dashboard/core/utils/media_query_values.dart';
import 'package:coffee_dashboard/core/utils/style_manager.dart';
import 'package:coffee_dashboard/generated/l10n.dart';
import 'package:coffee_dashboard/presntation/view/screens/ads_screen.dart';
import 'package:coffee_dashboard/presntation/view/screens/categories/categoies_screen.dart';
import 'package:coffee_dashboard/presntation/view/screens/orders_screen.dart';
import 'package:coffee_dashboard/presntation/view/screens/pages_screen.dart';
import 'package:coffee_dashboard/presntation/view/screens/products_screen.dart';
import 'package:coffee_dashboard/presntation/view/screens/settings_screen.dart';
import 'package:coffee_dashboard/presntation/view/screens/statistacs_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int curentIndex = 0;
  List<Widget> screens = [
    const StatistacsScreen(),
    const CategoiesScreen(),
    const ProductsScreen(),
    const OrdersScreen(),
    const PagesScreen(),
    const AdsScreen(),
    const SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.nude,
      appBar: AppBar(
        backgroundColor: AppColors.brown,
        title: Text(
          S.of(context).dashboard,
          style: getBoldStyle(
            color: AppColors.black,
            fontSize: context.height * 0.045,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                AppRouter.goPush(context, AppRouter.notifcation);
              },
              icon: Icon(
                Icons.notifications_none,
                color: AppColors.black,
              ))
        ],
      ),
      body: Row(
        children: [
          Material(
            elevation: 10,
            child: Container(
              color: AppColors.nude,
              height: double.infinity,
              width: context.width * 0.2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            curentIndex = 0;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.chart_pie,
                              color: AppColors.black,
                              size: context.height * 0.03,
                            ),
                            SizedBox(
                              width: context.width * 0.004,
                            ),
                            Text(
                              S.of(context).statistics,
                              style: getSemiBoldStyle(
                                  color: AppColors.black,
                                  fontSize: context.height * 0.03),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: context.height * 0.02,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            curentIndex = 1;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.category_outlined,
                              color: AppColors.black,
                              size: context.height * 0.03,
                            ),
                            SizedBox(
                              width: context.width * 0.004,
                            ),
                            Text(
                              S.of(context).categories,
                              style: getSemiBoldStyle(
                                  color: AppColors.black,
                                  fontSize: context.height * 0.03),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: context.height * 0.02,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            curentIndex = 2;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.cube_box,
                              color: AppColors.black,
                              size: context.height * 0.03,
                            ),
                            SizedBox(
                              width: context.width * 0.004,
                            ),
                            Text(
                              S.of(context).products,
                              style: getSemiBoldStyle(
                                  color: AppColors.black,
                                  fontSize: context.height * 0.03),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: context.height * 0.02,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            curentIndex = 3;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: AppColors.black,
                              size: context.height * 0.03,
                            ),
                            SizedBox(
                              width: context.width * 0.004,
                            ),
                            Text(
                              S.of(context).orders,
                              style: getSemiBoldStyle(
                                  color: AppColors.black,
                                  fontSize: context.height * 0.03),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: context.height * 0.02,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            curentIndex = 4;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.auto_awesome_motion_outlined,
                              color: AppColors.black,
                              size: context.height * 0.03,
                            ),
                            SizedBox(
                              width: context.width * 0.004,
                            ),
                            Text(
                              S.of(context).pages,
                              style: getSemiBoldStyle(
                                  color: AppColors.black,
                                  fontSize: context.height * 0.03),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: context.height * 0.02,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            curentIndex = 5;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.yard_outlined,
                              color: AppColors.black,
                              size: context.height * 0.03,
                            ),
                            SizedBox(
                              width: context.width * 0.004,
                            ),
                            Text(
                              S.of(context).ads,
                              style: getSemiBoldStyle(
                                  color: AppColors.black,
                                  fontSize: context.height * 0.03),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: context.height * 0.02,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            curentIndex = 6;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.settings_outlined,
                              color: AppColors.black,
                              size: context.height * 0.03,
                            ),
                            SizedBox(
                              width: context.width * 0.004,
                            ),
                            Text(
                              S.of(context).setting,
                              style: getSemiBoldStyle(
                                  color: AppColors.black,
                                  fontSize: context.height * 0.03),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: context.height * 0.02,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
              child: SizedBox(
            child: screens[curentIndex],
          ))
        ],
      ),
    );
  }
}
