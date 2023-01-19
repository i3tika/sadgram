import 'package:flutter/material.dart';
import 'package:myapp/core/images/images.dart';
import 'package:myapp/core/theme/app_colors.dart';
import 'package:myapp/core/theme/app_fonts.dart';

import '../core/widget/avatar.dart';
import '../core/widget/avatarthree.dart';

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
                    Image.asset(
                      AppImages.profil,
                      width: 24,
                      height: 24,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 608,
                height: 38,
                color: AppColors.blackGrey,
                child: TabBar(
                    // isScrollable: true,
                    indicatorColor: AppColors.white,
                    tabs: [
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'все',
                              style: AppFonts.w400s14,
                            )
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'разбили сердца',
                              style: AppFonts.w400s14,
                            ),
                            //  CircleAvatar(
                            //   radius: 10,
                            // )
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'грустят с вами',
                              style: AppFonts.w400s14,
                            ),
                          ],
                        ),
                      ),
                    ]),
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
                  child: Text('OneScreen',style: AppFonts.w400s14.copyWith(color: AppColors.white),
                  ),),
                  Tab(
                    child: Text('TwoScreen',style: AppFonts.w400s14.copyWith(color: AppColors.white),
                  ),)
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Image.asset(
            AppImages.avatar,
            width: 36,
            height: 36,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // title
                  'viktoria_fox',
                  style: AppFonts.w600s14,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Комментирует',
                  style: AppFonts.w400s12,
                ),
                SizedBox(
                  height: 4,
                ),
                // Text(
                //   'В целом, конечно, семантический разбор\nвнешних противодействий создаёт\nпредпосылки...',
                //   style: AppFonts.w400s12
                //       .copyWith(color: AppColors.grey),
                // ),
                Text(
                  title,
                  style: AppFonts.w400s12.copyWith(color: AppColors.grey),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '1ч. назад',
                  style: AppFonts.w400s12.copyWith(color: AppColors.grey),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 60,
        ),
        Image.asset(
          AppImages.dogs,
          width: 36,
          height: 36,
        ),
      ],
    );
  }
}


// Padding(
//                 padding: const EdgeInsets.only(left: 12),
//                 child: Row(
//                   children: [
//                     Image.asset(
//                       AppImages.avatar,
//                       width: 36,
//                       height: 36,
//                     ),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           // title
//                           'viktoria_fox',
//                           style: AppFonts.w600s14,
//                         ),
//                         const SizedBox(
//                           height: 4,
//                         ),
//                         Text(
//                           'Грустит с вами',
//                           style: AppFonts.w400s12,
//                         ),
//                         SizedBox(
//                           height: 4,
//                         ),
//                         Text(
//                           '1ч. назад',
//                           style:
//                               AppFonts.w400s12.copyWith(color: AppColors.grey),
//                         )
//                       ],
//                     ),
//                     const SizedBox(
//                       width: 210,
//                     ),
//                     Image.asset(
//                       AppImages.dogs,
//                       width: 36,
//                       height: 36,
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 22,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 12),
//                 child: Column(
//                   children: [
//                     AvatarThree(title: 'Разбил(-а) сердце ',),
//                     const SizedBox(
//                       height: 22,
//                     ),
//                     AvatarWidget(
//                       title:
//                           'В целом, конечно, семантический разбор\nвнешних противодействий создаёт\nпредпосылки...',
//                     ),
//                     const SizedBox(
//                       height: 22,
//                     ),
//                     Avatar(
//                       title: 'Погрустил о Вас',
//                     ),
//                     const SizedBox(
//                       height: 22,
//                     ),
//                     AvatarWidget(
//                         title:
//                             'В целом, конечно, семантический разбор\nвнешних противодействий создаёт\nпредпосылки...'),
//                     const SizedBox(
//                       height: 22,
//                     ),
//                     Avatar(title: 'Разбил(-а) сердце')
//                   ],
//                 ),
//               )