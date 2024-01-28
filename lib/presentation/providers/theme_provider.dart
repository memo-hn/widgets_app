

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Un simple booleano
final isDarkmodeProvider = StateProvider( (ref) => false );

// Listado de colores inmutable (nunca va a cambiar)
final colorListProvider = Provider((ref) => colorList);

// Un simple entero
final selectedColorProvider = StateProvider( (ref) => 0 );
