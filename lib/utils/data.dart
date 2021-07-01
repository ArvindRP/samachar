import 'package:samachar/Modals/categorymodal.dart';

import '../Modals/categorymodal.dart';

List<CategoryModel> getCategories(){

  List<CategoryModel> category = [];
  
  CategoryModel categoryModel = new CategoryModel();
  categoryModel.categoryName = "Business";
  categoryModel.imageURL = "https://images.unsplash.com/photo-1444653614773-995cb1ef9efa?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YnVzaW5lc3N8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageURL = "https://images.unsplash.com/photo-1499364615650-ec38552f4f34?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZW50ZXJ0YWlubWVudHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageURL = "https://images.unsplash.com/photo-1489533119213-66a5cd877091?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Z2VuZXJhbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imageURL = "https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aGVhbHRofGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.imageURL = "https://images.unsplash.com/photo-1564325724739-bae0bd08762c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2NpZW5jZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.imageURL = "https://images.unsplash.com/photo-1541534741688-6078c6bfb5c5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c3BvcnRzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageURL = "https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dGVjaG5vbG9neXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);
  


  return category;

}


// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';

// class AppBarDemo extends StatelessWidget {
//   const AppBarDemo({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var localization = GalleryLocalizations.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton( 
//           tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
//           icon: const Icon(Icons.menu),
//           onPressed: () {},
//         ),
//         title: Text(
//           localization.demoAppBarTitle,
//         ),
//         actions: [
//           IconButton(
//             tooltip: localization.starterAppTooltipFavorite,
//             icon: const Icon(
//               Icons.favorite,
//             ),
//             onPressed: () {},
//           ),// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';

// class AppBarDemo extends StatelessWidget {
//   const AppBarDemo({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var localization = GalleryLocalizations.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
//           icon: const Icon(Icons.menu),
//           onPressed: () {},
//         ),
//         title: Text(
//           localization.demoAppBarTitle,
//         ),
//         actions: [
//           IconButton(
//             tooltip: localization.starterAppTooltipFavorite,
//             icon: const Icon(
//               Icons.favorite,
//             ),
//             onPressed: () {},
//           ),
//           IconButton(
//             tooltip: localization.starterAppTooltipSearch,
//             icon: const Icon(
//               Icons.search,
//             ),
//             onPressed: () {},
//           ),
//           PopupMenuButton<Text>(
//             itemBuilder: (context) {
//               return [
//                 PopupMenuItem(
//                   child: Text(
//                     localization.demoNavigationRailFirst,
//                   ),
//                 ),
//                 PopupMenuItem(
//                   child: Text(
//                     localization.demoNavigationRailSecond,
//                   ),
//                 ),
//                 PopupMenuItem(
//                   child: Text(
//                     localization.demoNavigationRailThird,
//                   ),
//                 ),
//               ];
//             },
//           )
//         ],
//       ),
//       body: Center(
//         child: Text(
//           localization.cupertinoTabBarHomeTab,
//         ),
//       ),
//     );
//   }
// }


//           IconButton(
//             tooltip: localization.starterAppTooltipSearch,
//             icon: const Icon(
//               Icons.search,
//             ),
//             onPressed: () {},
//           ),
//           PopupMenuButton<Text>(
//             itemBuilder: (context) {
//               return [
//                 PopupMenuItem(
//                   child: Text(
//                     localization.demoNavigationRailFirst,
//                   ),
//                 ),
//                 PopupMenuItem(
//                   child: Text(
//                     localization.demoNavigationRailSecond,
//                   ),
//                 ),
//                 PopupMenuItem(
//                   child: Text(
//                     localization.demoNavigationRailThird,
//                   ),
//                 ),
//               ];
//             },
//           )
//         ],
//       ),
//       body: Center(
//         child: Text(
//           localization.cupertinoTabBarHomeTab,
//         ),
//       ),
//     );
//   }
// }

