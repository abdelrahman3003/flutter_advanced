import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinic_system/core/network/sharded_pref.dart';
import 'package:clinic_system/core/theme/colors.dart';
import 'package:clinic_system/core/theme/styles.dart';
import 'package:clinic_system/features/home/presentation/controller/cubit/home_cubit.dart';
import 'package:clinic_system/features/home/presentation/controller/cubit/home_state.dart';
import 'package:clinic_system/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<HomeCubit>();
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Omar!",
                      style: Styles.font18blackew700,
                    ),
                    Text(
                      "How Are you Today?",
                      style: Styles.font12greye400w,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 48.h,
                width: 48.w,
                child: CircleAvatar(
                  backgroundColor: AppColors.grey4,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      InkWell(
                        onTap: () {
                          AppService.sharedPreferences.clear();
                        },
                        child: SvgPicture.asset(
                          Assets.icons.notification,
                        ),
                      ),
                      Positioned(
                        top: -1.7,
                        right: -2.2,
                        child: SvgPicture.asset(
                          Assets.icons.newNotfication,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 30.h),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: 165.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 16.h,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    image: DecorationImage(
                        image: AssetImage(Assets.images.background.path),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book and\nschedule with\nnearest doctor",
                      style: Styles.font18whiteew500,
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        context.read<HomeCubit>().fetchData();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(48.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 20.w)),
                      child: Text('Find Nearby',
                          style: Styles.font14blue400w.copyWith(
                            fontSize: 12.sp,
                          )),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 8.w,
                bottom: 0,
                child: Image.asset(Assets.images.doc.path, height: 200.h),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Text("Doctor Speciality", style: Styles.font18blackew700),
              const Spacer(),
              Text("See All", style: Styles.font14blue400w)
            ],
          ),
          SizedBox(height: 20.h),
          BlocBuilder<HomeCubit, HomeState>(
            buildWhen: (previous, current) => current is Success,
            builder: (context, state) {
              return state.maybeWhen(
                success: (catergories, categoryid) {
                  return SizedBox(
                    height: 120.h,
                    child: ListView.builder(
                      itemCount: catergories.data?.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                cubit.changeCategory(index);
                              },
                              child: CircleAvatar(
                                backgroundColor: categoryid == index
                                    ? AppColors.grey2
                                    : AppColors.grey4,
                                radius: 30.h,
                                child: SvgPicture.asset(
                                  Assets.icons.logo,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            SizedBox(
                              width: 112.w,
                              child: Text(
                                "${catergories.data?[index]?.name}",
                                style: Styles.font14black400w,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Text("Recommendation Doctor", style: Styles.font18blackew700),
              const Spacer(),
              Text("See All", style: Styles.font14blue400w)
            ],
          ),
          SizedBox(height: 20.h),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const Expanded(
                    child: Center(child: CircularProgressIndicator())),
                success: (categories, categoryId) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: categories.data?[0]?.doctors?.length ?? 3,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 110.w,
                              height: 110.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(categories
                                            .data![categoryId]
                                            ?.doctors?[index]
                                            ?.photo ??
                                        "https://images.pexels.com/photos/5327656/pexels-photo-5327656.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  )),
                            ),
                            SizedBox(width: 20.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "${categories.data?[categoryId]?.doctors?[index]?.name}",
                                    style: Styles.font18blackew700
                                        .copyWith(fontSize: 15.sp)),
                                SizedBox(height: 6.h),
                                Text("${categories.data?[categoryId]?.name}",
                                    style: Styles.font14greye400w.copyWith(
                                        fontSize: 12.sp,
                                        color: AppColors.grey1)),
                                SizedBox(height: 6.h),
                                Row(
                                  children: [
                                    SvgPicture.asset(Assets.icons.magicStar),
                                    Text(" 4.8 (4,279 reviews)",
                                        style: Styles.font14greye400w.copyWith(
                                            fontSize: 12.sp,
                                            color: AppColors.grey1)),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                // error: (error) => erroDialog(context, error),

                orElse: () => const SizedBox.shrink(),
              );
            },
          )
        ],
      ),
    )));
  }
}
