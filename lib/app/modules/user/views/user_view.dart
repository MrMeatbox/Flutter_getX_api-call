import 'package:api_getx/app/modules/post/views/post_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_controller.dart';

class UserView extends StatelessWidget {
  // const userView({super.key});
  final UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
          appBar: AppBar(
            title: const Text('User List'),
            centerTitle: true,
          ),
          backgroundColor: Colors.grey,
          body: SingleChildScrollView(
            child: Column(
              children: [
                for (var user in userController.userList)
                  InkWell(
                    onTap: (() {
                      Get.to(() => PostView(), arguments: user);
                      // userId: user.id!, name: user.name!
                    }),
                    child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              color: Colors.white,
                              child: Row(children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Icon(
                                    Icons.person_pin,
                                    size: 30,
                                  ),
                                ),
                                Container(
                                    margin: const EdgeInsets.all(20),
                                    child: Column(children: [
                                      Text(
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                          "Name:  ${user.name!}"),
                                      Text(
                                          style: const TextStyle(fontSize: 20),
                                          "Email:  ${user.email!}"),
                                    ]))
                              ]),
                            )
                          ],
                        )),
                  ),
              ],
            ),
          ));
    });
  }
}




























// class UserView extends GetView<UserController> {
//   const UserView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     UserController userController = Get.put(UserController());
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('UserView'),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//           child: Column(
//             children: [
//               for (var user in userList)
//                 InkWell(
//                   // onTap: (() {
//                   //   Get.to(Post(userId: user.id!, name: user.name!));
//                   // }),
//                   child: Container(
//                       margin: EdgeInsets.only(top: 10),
//                       child: Column(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.all(5),
//                             // color: Colors.grey,
//                             child: Row(children: [
//                               Container(
//                                 width: 50,
//                                 height: 50,
//                                 decoration: BoxDecoration(
//                                     color: Colors.red,
//                                     borderRadius: BorderRadius.circular(50)),
//                                 child: Icon(
//                                   Icons.person,
//                                   size: 30,
//                                 ),
//                               ),
//                               Container(
//                                   margin: EdgeInsets.only(left: 10),
//                                   child: Column(children: [
//                                     Text(user.name!),
//                                     Text(user.email!),
//                                   ]))
//                             ]),
//                           )
//                         ],
//                       )),
//                 ),
//             ],
//           ),
//         )
//     );
//   }
// }
