import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

PreferredSizeWidget custpmAppBar()=> AppBar(
        elevation: 0,
        shadowColor: Appcolors.grey600,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            size: 24,
            color: Appcolors.black500,
          ),
        ),
      );
 