import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';

import '../../../../../../core/themes/app_assets.dart';

class ProductSliverAppBarLeading extends StatelessWidget {
  const ProductSliverAppBarLeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 5.0),
      child: CircleAvatar(
        radius: 22.5.r,
        backgroundColor: Theme.of(
          context,
        ).colorScheme.surfaceContainerHighest,
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            context.pop();
          },
          icon: SvgPicture.asset(
            AppAssets.iconsArrowBackLightIcon,
            width: 25.sp,
            height: 25.sp,
            colorFilter: ColorFilter.mode(
              Theme.of(context).iconTheme.color!,
              BlendMode.srcIn,
            ),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
