class AppAssets
{
  AppAssets._();

  static final iconsPNG = _AppIconsPNG._();
  static final iconsSVG = _AppIconsSVG._();

  static final imagesPNG = _AppPNGIMGs._();
  static final imagesSVG = _AppSVGIMGs._();
}

///-----------------------------------------------------------------//
class _AppIconsPNG
{
  _AppIconsPNG._();

  //Splash
  final String robotIconPNG = "assets/icons/Splash/Robot.png";

  //Login
  final String countryPNG = "assets/icons/Login/Country.png";
  final String languagePNG = "assets/icons/Login/Language.png";
  final String modePNG = "assets/icons/Login/Mode.png";
  final String leftArrowPNG = "assets/icons/Login/Left_Arrow.png";
}
class _AppIconsSVG
{
  _AppIconsSVG._();

  //Splash
  final String robotIconSVG = "assets/icons/Splash/Robot.svg";

  //Login
  final String countrySVG = "assets/icons/Login/Country.svg";
  final String languageSVG = "assets/icons/Login/Language.svg";
  final String modeSVG = "assets/icons/Login/Mode.svg";
  final String leftArrowSVG = "assets/icons/Login/Left_Arrow.svg";
}

///-----------------------------------------------------------------//
class _AppPNGIMGs
{
  _AppPNGIMGs._();

  //Login
  final String cloudRobotPNG = "assets/icons/Login/Cloud_Robot.png";
}
class _AppSVGIMGs
{
  _AppSVGIMGs._();

  //Login
  final String cloudRobotPNG = "assets/icons/Login/Cloud_Robot.svg";
}