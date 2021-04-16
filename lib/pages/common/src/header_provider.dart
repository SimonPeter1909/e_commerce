import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/utils/router.gr.dart';
import 'package:flutter/material.dart';

class HeaderProvider with ChangeNotifier{

  bool isSearchEnabled = false;

  int getCurrentIndex(BuildContext context){
    // print(AutoRouter.of(context).current.name);
    if(AutoRouter.of(context).current.name == 'Home'){
      return 0;
    } else if(AutoRouter.of(context).current.name == "Categories"){
      return 1;
    } else {
      return 0;
    }
    // notifyListeners();
  }

  toggleSearch() {
    isSearchEnabled = !isSearchEnabled;
    print(isSearchEnabled);
    notifyListeners();
  }

  onTapIndex(BuildContext context, int value) {
    // currentIndex = value;
    // notifyListeners();

    switch(value){
      case 0:
        AutoRouter.of(context).push(Home());
        break;
      case 1:
        AutoRouter.of(context).push(Categories());
        break;
      case 2:
        // AutoRouter.of(context).push(Home());
        break;
      case 3:
        // AutoRouter.of(context).push(Home());
        break;
    }

  }

}