import 'package:flutter/material.dart';
import 'package:myapp/core/images/images.dart';
import 'package:myapp/core/theme/app_colors.dart';
import 'package:myapp/core/theme/app_fonts.dart';

import '../core/widget/avatar.dart';
import '../core/widget/avatarthree.dart';
import '../core/widget/avatarwidget.dart';
import '../core/widget/circle_avatar.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 16),
                child: Row(
                  children: [
                    Image.asset(
                      AppImages.logo,
                      width: 130,
                      height: 19,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_circle_outline_sharp,
                          color: AppColors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment,
                          color: AppColors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: AppColors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_circle_outline_sharp,
                          color: AppColors.white,
                        )),
                    const SizedBox(width:5 ,),
                    CircleAvatar(radius: 15,
                    backgroundImage: AssetImage(AppImages.profil)),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Container(
                    width: 608,
                    height: 38,
                    color: AppColors.blackGrey,
                    child: TabBar(
                        // labelPadding: EdgeInsets.all(15),
                        padding: EdgeInsets.only(left: 15),
                        isScrollable: true,
                        indicatorColor: AppColors.white,
                        tabs: [
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'все',
                                  style: AppFonts.w400s14,
                                ),
                                const
                                SizedBox(
                                  width: 5,
                                ),
                                
                                CircleAvatar(
                                  backgroundColor: AppColors.white,
                                   child:  Text( '15',
                                      style: AppFonts.w400s12.copyWith(
                                        color: AppColors.blacktext,
                                      )),
                                  radius: 9,
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(width: 10,),
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:const [
                                Text(
                                  'разбили сердца',
                                  style: AppFonts.w400s14,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatarWidget(title: '5',),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:const [
                                Text(
                                  'грустят с вами',
                                  style: AppFonts.w400s14,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                CircleAvatarWidget(title: '5',),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: SingleChildScrollView(
                        child: Column(
                          children: const [
                            AvatarThree(title: 'Грустит с вами      '),
                            SizedBox(
                              height: 22,
                            ),
                            AvatarThree(title: 'Разбил(-а) сердце '),
                            SizedBox(
                              height: 22,
                            ),
                            AvatarWidget(
                                title:
                                    'В целом, конечно, семантический разбор\nвнешних противодействий создаёт\nпредпосылки...'),
                            SizedBox(
                              height: 22,
                            ),
                            Avatar(title: 'Погрустил о Вас'),
                            SizedBox(
                              height: 22,
                            ),
                            AvatarWidget(
                                title:
                                    'В целом, конечно, семантический разбор\nвнешних противодействий создаёт\nпредпосылки...'),
                            SizedBox(
                              height: 22,
                            ),
                            AvatarThree(title: 'Разбил(-а) сердце '),
                            SizedBox(
                              height: 22,
                            ),
                            AvatarWidget(
                                title:
                                    'В целом, конечно, семантический разбор\nвнешних противодействий создаёт\nпредпосылки...'),
                            SizedBox(
                              height: 22,
                            ),
                            AvatarThree(title: 'Грустит с вами      '),
                            SizedBox(
                              height: 22,
                            ),
                            AvatarWidget(
                                title:
                                    'В целом, конечно, семантический разбор\nвнешних противодействий создаёт\nпредпосылки...'),
                            SizedBox(
                              height: 22,
                            ),
                            AvatarThree(title: 'Разбил(-а) сердце '),
                            SizedBox(
                              height: 22,
                            ),
                            AvatarWidget(
                                title:
                                    'В целом, конечно, семантический разбор\nвнешних противодействий создаёт\nпредпосылки...'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'OneScreen',
                      style: AppFonts.w400s14.copyWith(color: AppColors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'TwoScreen',
                      style: AppFonts.w400s14.copyWith(color: AppColors.white),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}


