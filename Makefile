web1:
	ln -sf pubspec_web.yaml pubspec.yaml && flutter pub upgrade\
	&& find lib test -type f -exec sed -i 's/package:flutter\//package:flutter_web\//g' {} +\
	&& find test -type f -exec sed -i 's/package:flutter_test\/flutter_test.dart/package:flutter_web_test\/flutter_web_test.dart/g' {} +

mobile:
	ln -sf pubspec_mobile.yaml pubspec.yaml && flutter pub get\
	&& find lib test -type f -exec sed -i 's/package:flutter_web\//package:flutter\//g' {} +\
	&& find test -type f -exec sed -i 's/package:flutter_web_test\/flutter_web_test.dart/package:flutter_test\/flutter_test.dart/g' {} +

run_web:
	webdev serve

run_mobile:
	flutter run -d $(emulator)
