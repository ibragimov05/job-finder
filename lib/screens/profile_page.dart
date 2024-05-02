import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_finder/widgets/container_maker.dart';
import 'package:job_finder/widgets/expansion_maker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf9f9f9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// main container in top
            Container(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 30, top: 30),
              // height: 220.h,
              // width: 400.w,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color(0xff9b84fe),
                  Color(0xFFa38bff),
                  Color(0xff937bf7),
                  Color(0xff8968fc),
                  Color(0xff714cf7),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// container for profile picture
                      Container(
                        width: 50.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: const Color(0xFFd9d9d9),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              // color: Colors.black,
                              color: const Color(0xFFb4a1ff),
                              spreadRadius: 8.r,
                              blurRadius: 0.r,
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          /// arrow icon
                          SizedBox(
                            width: 25.w,
                            height: 25.h,
                            child: Image.asset(
                              'assets/icons/arrow.png',
                            ),
                          ),

                          /// text icon
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            width: 25.w,
                            height: 25.h,
                            child: Image.asset(
                              'assets/icons/settings.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'Brandone Louis',
                    style: GoogleFonts.abel(
                      fontSize: 17.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'California, USA',
                    style: GoogleFonts.abel(
                      fontSize: 13.5.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),

                  /// row for edit profile container and text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '120k Follower',
                        style: GoogleFonts.akatab(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '23k Following',
                        style: GoogleFonts.akatab(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Edit profile',
                              style: GoogleFonts.akatab(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                width: 20.w,
                                height: 20.h,
                                child: Image.asset('assets/icons/edit.png')),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20.r),
                    ),

                    /// expansion tile
                    child: ExpansionTile(
                      collapsedBackgroundColor: const Color(0xFFFFFFFF),
                      backgroundColor: const Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          20.0.r,
                        ),
                      ),
                      trailing: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFd9d0fa),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Color(0xFF3f13e4),
                        ),
                      ),

                      /// expansion tile icon and texts
                      title: Row(
                        children: [
                          Container(
                            width: 30.w,
                            height: 30.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/icons/expansion_icons/profile.png',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14.w,
                          ),
                          Text(
                            'About me',
                            style: GoogleFonts.akatab(
                                fontWeight: FontWeight.w700, fontSize: 17.sp),
                          ),
                        ],
                      ),

                      /// text in expansion tile
                      children: [
                        Divider(
                          color: Colors.grey.withOpacity(0.4),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Column(
                            children: [
                              Text(
                                  'Lorem imsum dolor sit amet, consectetru adipiscing elit.Lectur id commodo egestats metus interdum dolor.'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ExpansionCreator(
                    photoPath: 'assets/icons/expansion_icons/case.png',
                    text: 'Work experience',
                    startText: 'Manager',
                    centerText: 'Amazon Inc',
                    endText: 'Jan 2015 - Feb 2022 · 5 Years',
                  ),
                  ExpansionCreator(
                    photoPath: 'assets/icons/expansion_icons/hat.png',
                    text: 'Education',
                    startText: 'Information Technology',
                    centerText: 'University of Oxford',
                    endText: 'Sep 2010 - Aug 2013 · 5 Years',
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20.r),
                    ),

                    /// expansion tile
                    child: ExpansionTile(
                      collapsedBackgroundColor: const Color(0xFFFFFFFF),
                      backgroundColor: const Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust the radius as needed
                      ),
                      trailing: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xFFd9d0fa), shape: BoxShape.circle),
                        child: const Icon(
                          Icons.add,
                          color: Color(0xFF3f13e4),
                        ),
                      ),

                      /// expansion tile icon and texts
                      title: Row(
                        children: [
                          Container(
                            width: 30.w,
                            height: 30.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/icons/expansion_icons/skill.png',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14.w,
                          ),
                          Text(
                            'Skill',
                            style: GoogleFonts.akatab(
                                fontWeight: FontWeight.w700, fontSize: 17.sp),
                          ),
                        ],
                      ),

                      /// text in expansion tile
                      children: [
                        Divider(
                          color: Colors.grey.withOpacity(0.4),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ContainerMaker(text: 'Leadership', count: 1),
                                  ContainerMaker(text: 'Teamwork', count: 1),
                                  ContainerMaker(text: 'Visioner', count: 1),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ContainerMaker(
                                      text: 'Target oriented', count: 1),
                                  ContainerMaker(text: 'Consistent', count: 1),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  const Text('+5 more')
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              const Text(
                                'See more',
                                style: TextStyle(
                                  color: Color(0xFF7551ff),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// language
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20.r),
                    ),

                    /// expansion tile
                    child: ExpansionTile(
                      collapsedBackgroundColor: const Color(0xFFFFFFFF),
                      backgroundColor: const Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0.r),
                      ),
                      trailing: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xFFd9d0fa), shape: BoxShape.circle),
                        child: const Icon(
                          Icons.add,
                          color: Color(0xFF3f13e4),
                        ),
                      ),

                      /// expansion tile icon and texts
                      title: Row(
                        children: [
                          Container(
                            width: 30.w,
                            height: 30.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/icons/expansion_icons/award.png',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14.w,
                          ),
                          Text(
                            'Language',
                            style: GoogleFonts.akatab(
                                fontWeight: FontWeight.w700, fontSize: 17.sp),
                          ),
                        ],
                      ),

                      /// text in expansion tile
                      children: [
                        Divider(
                          color: Colors.grey.withOpacity(0.4),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ContainerMaker(text: 'English', count: 2),
                                  ContainerMaker(text: 'German', count: 2),
                                  ContainerMaker(text: 'Spanish', count: 2),
                                  // ContainerMaker(text: 'Leadership'),
                                  // ContainerMaker(text: 'Leadership'),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ContainerMaker(text: 'Mandarin', count: 2),
                                  ContainerMaker(text: 'Italy', count: 2),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// appreciation expansion
                  ExpansionCreator(
                    photoPath: 'assets/icons/expansion_icons/translate.png',
                    text: 'Appreciation',
                    startText: 'Wireless Symposium (RWS)',
                    centerText: 'Young Scientist',
                    endText: '2014',
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20.r),
                    ),

                    /// expansion tile
                    child: ExpansionTile(
                      collapsedBackgroundColor: const Color(0xFFFFFFFF),
                      backgroundColor: const Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0.r),
                      ),
                      trailing: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xFFd9d0fa), shape: BoxShape.circle),
                        child: const Icon(
                          Icons.add,
                          color: Color(0xFF3f13e4),
                        ),
                      ),

                      /// expansion tile icon and texts
                      title: Row(
                        children: [
                          Container(
                            width: 30.w,
                            height: 30.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/icons/expansion_icons/resume.png',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14.w,
                          ),
                          Text(
                            'Resume',
                            style: GoogleFonts.akatab(
                                fontWeight: FontWeight.w700, fontSize: 17.sp),
                          ),
                        ],
                      ),

                      /// text in expansion tile
                      children: [
                        Divider(
                          color: Colors.grey.withOpacity(0.4),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 40.h,
                                width: 40.w,
                                child: Image.asset(
                                  'assets/icons/expansion_icons/pdf.png',
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jamet Kudasi - CV - UI/UX Designer',
                                    style: TextStyle(
                                      color: const Color(0xFF180f40),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.5.sp,
                                    ),
                                  ),
                                  Text(
                                    '867 Kb · 14 Feb 2022 at 11:30am',
                                    style: TextStyle(
                                      color: const Color(0xFFa7a3bb),
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20.w,
                                height: 20.h,
                                child: Image.asset(
                                  'assets/icons/expansion_icons/trash.png',
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      /// bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 25.h,
              width: 25.w,
              child: Image.asset('assets/icons/navBar_icons/home.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 25.h,
              width: 25.w,
              child: Image.asset('assets/icons/navBar_icons/share.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 35.h,
              width: 35.w,
              child: Image.asset('assets/icons/navBar_icons/plus.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 25.h,
              width: 25.w,
              child: Image.asset('assets/icons/navBar_icons/message.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 25.h,
              width: 25.w,
              child: Image.asset('assets/icons/navBar_icons/save.png'),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
