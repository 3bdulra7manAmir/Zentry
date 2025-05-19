import 'package:equatable/equatable.dart';

class AppFormEntity extends Equatable
{
  final String? languageIcon;
  final String? language;
  final String? countryIcon;
  final String? country;
  final String? modeIcon;
  final String? mode;

  const AppFormEntity({
    this.languageIcon,
    this.language,
    this.countryIcon,
    this.country,
    this.modeIcon,
    this.mode,
  });

  @override
  List<Object?> get props => [
    languageIcon,
    language,
    countryIcon,
    country,
    modeIcon,
    mode,
  ];
}
