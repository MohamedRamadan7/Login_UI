
import 'package:login/shared/network/local/cache_helper.dart';


void signOut(context) {
  CacheHelper.removeData(key: 'token').then((value) {
    if (value) {}
  });
}

String? uId;
