import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../configs/colors/app_colors.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Card(
            child: Container(
          height: 98,
          width: 327,
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 6, offset: Offset.zero),
              ],
              color: AppColor.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(468.75))),
                child: Image.asset(
                  'images/icons/Frame_1000002529.png',
                  width: 60,
                  height: 60,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'মোঃ মোহাইমেনুল রেজা',
                    style: GoogleFonts.notoSerifBengali(
                        textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColor.gray500,
                    )),
                  ),
                  Text(
                    'সফটবিডি লিমিটেড',
                    style: GoogleFonts.notoSerifBengali(
                        textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.gray300,
                    )),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 16,
                        width: 16,
                        child: Image.asset(
                          'images/icons/map_point.png',
                          width: 10.67,
                          height: 13.33,
                          color: AppColor.gray500,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'ঢাকা',
                        style: GoogleFonts.notoSerifBengali(
                            textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.gray300,
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
