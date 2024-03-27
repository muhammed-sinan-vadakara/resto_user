import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/extensions/boxshadow_extension.dart';

import 'package:resto_user/core/themes/extensions/color_extension.dart';
import 'package:resto_user/core/themes/extensions/space_extension.dart';
import 'package:resto_user/core/themes/extensions/typography_extension.dart';

extension AppTheme on BuildContext {
  AppColorExtension get colors {
    return Theme.of(this).extension<AppColorExtension>()!;
  }

  AppSpaceExtension get spaces {
    return Theme.of(this).extension<AppSpaceExtension>()!;
  }

  AppTypographyExtension get typography {
    return Theme.of(this).extension<AppTypographyExtension>()!;
  }

  AppBoxShadowExtension get boxShadow {
    return Theme.of(this).extension<AppBoxShadowExtension>()!;
  }
}
