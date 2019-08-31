import 'package:flutter/material.dart';

class AppTheme {

    // Colors
    static const Color blackCardTextColor = const Color(0xDDFFFFFF);
    static const Color whiteCardTextColor = const Color(0xCC000000);


    // Text Styles
    static const TextStyle blackCardTextStyle = const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500, color: blackCardTextColor);
    static const TextStyle whiteCardTextStyle = const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: whiteCardTextColor);

    static const TextStyle appBarStyle = const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500, color: customThemeAppBarTextColor);
    static const TextStyle boldStyle = const TextStyle(fontWeight: FontWeight.bold);
    static const TextStyle titleStyle = const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500);
    static const TextStyle title16Style = const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500);
    static const TextStyle font18_black54 = const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, color: Colors.black54);
    static const TextStyle font14_white = const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, color: Colors.white);
    static const TextStyle font12_black54 = const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, color: Colors.black54);
    static const TextStyle font16_black54 = const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black54);

    // Past Values Used

    static const Color customThemeAppBarColor = const Color(0x99C2C2C2);
    static const Color customThemeAppBarTextColor = const Color(0xFFE5E5E5);
    static const Color flutterLogoDarkBlue = const Color(0xFF005498);
    static const Color flutterLogoLightBlue = const Color(0xFF54CFfF8);
    static const Color customThemePageBackgroundColor = const Color(0xFFC2C2C2);
    static const Color colorDarkPurpleBackground = const Color(0xFF270C39);
    static const Color colorTranslucentLightPurpleBackground = const Color(0xF5372750);
    static const Color colorTranslucentDarkLoginBackground = const Color(0xAA23163B);
    static const Color colorLightPurple = const Color(0xFF372750);
    static const Color colorFuchsia = const Color(0xFFEE1287);
    static const Color colorRed = const Color(0xFFFB2424);
    static const Color colorTeal = const Color(0xFF49C9C5);
    static const Color colorCyan = const Color(0xFF49C9C5);
    static const Color colorGreen = const Color(0xFF1EA722);
    static const Color colorForMySessionText = const Color(0xFF52e555);
    static const Color colorForMySessionPopupText = const Color(0xFF000000);
    static const Color colorForMySessionsBookingOptionsButtonBackground = const Color(0xFFFFFFFF);
    static const Color colorForMySessionsBookingOptionsPopupBackground = const Color(0xFFFFFFFF);
    static const Color transparentColorForCancelledDialogGestureDetector = const Color(0x00000000);
    static const Color ColorForCancelledDialogTextBackground = const Color(0xFFFFFFFF);
    static const Color colorDivider = const Color(0xFFC2C2C2);


    static const Color colorShieldBronzeText = const Color(0xFFF3B454);
    static const Color colorShieldBronzeBackground = const Color(0xFFD6943A);
    static const Color colorShieldSilverText = const Color(0xFF292929);
    static const Color colorShieldSilverBackground = const Color(0xFF969395);
    static const Color colorShieldGoldText = const Color(0xFF6D4D1D);
    static const Color colorShieldGoldBackground = const Color(0xFFF7D44E);
    static const Color colorShieldDropShadow = const Color(0x900C020F); //const Color(0xFF1B0A2A);

    // Styles
    static const TextStyle loginButtonLargeStyle = const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500);
    static const TextStyle loginButtonSmallStyle = const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300);
    static const TextStyle tabLabelStyle = const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400);
    static const TextStyle unselectedTabStyle = const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300);
    static const TextStyle ctaButtonStyle = const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500);
    static const TextStyle mySessionHeaderText = const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: AppTheme.colorForMySessionText);
    static const TextStyle mySessionPagePopups = const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: AppTheme.colorForMySessionPopupText);
    static const TextStyle optionButtonStyle = const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);
    static const TextStyle loginTextFieldStyle = const TextStyle(fontSize: 16.0, color: Colors.white);

    // Paddings

    static const EdgeInsets textFieldPadding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0);
    static const EdgeInsets textFieldWithButtonPadding = const EdgeInsets.fromLTRB(20.0, 12.0, 0.0, 12.0);

    // Borders

    static const InputBorder textFieldBorder = const UnderlineInputBorder(borderRadius: BorderRadius.zero);

    // Input Decoration

    static InputDecoration textFieldDecoration = InputDecoration(
        filled: true,
        fillColor: AppTheme.colorDarkPurpleBackground.withOpacity(0.6),
        contentPadding: AppTheme.textFieldPadding,
        border: AppTheme.textFieldBorder,
        hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.8),
        ),
        errorStyle: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 14.0,
        ),
    );

    // Themes

    static ThemeData themeTopLevel() {
        return ThemeData(
            brightness: Brightness.dark,
            primaryColor: AppTheme.colorDarkPurpleBackground,
            primaryColorBrightness: Brightness.dark,
            accentColor: AppTheme.colorFuchsia,
            scaffoldBackgroundColor: AppTheme.colorDarkPurpleBackground,
            dialogBackgroundColor: AppTheme.colorDarkPurpleBackground,
            cardColor: AppTheme.colorLightPurple,
            splashColor: Colors.white.withOpacity(0.4),
            highlightColor: Colors.white.withOpacity(0.3),
            buttonColor: AppTheme.colorFuchsia,
            buttonTheme: ButtonThemeData(
                minWidth: double.infinity,
                height: 48.0,
                padding: const EdgeInsets.all(12.0),
                shape: const Border(),
                buttonColor: AppTheme.colorFuchsia,
                textTheme: ButtonTextTheme.primary,
            ),
            textSelectionHandleColor: AppTheme.colorFuchsia,
        );
    }

    static ThemeData themeLogin(BuildContext context) {
        final theme = Theme.of(context);
        return theme.copyWith(
            splashColor: AppTheme.colorFuchsia.withOpacity(0.4),
            highlightColor: AppTheme.colorFuchsia.withOpacity(0.3),
            accentColor: AppTheme.colorTeal,
            errorColor: AppTheme.colorTeal,
        );
    }
}
