import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:safetravel/utilities/constants.dart';

import '../qr_code.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_constructors_in_immutables
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: public_member_api_docs
class TravelDetailPage extends StatefulWidget {
  @override
  _TravelDetailPageState createState() => _TravelDetailPageState();
}

class _TravelDetailPageState extends State<TravelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage("assets/tours/tour1.jpg"),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Positioned(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 12,
                              ),
                            ),
                          ),
                        ),
                        left: 16,
                        top: 16,
                      ),
                    ],
                  ),
                ),
              ),
              flex: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "???? n???ng",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => QRCode()));
                            },
                            icon: Icon(Icons.qr_code),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Text(
                              "????????",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "H???i An-???? n???ng , Viet Nam",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "???",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "4.5/5 (1250)",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("2 000 000 VND",
                              style: TextStyle(
                                  fontSize: 14,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "1 325 000 VND",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor),
                          ),
                        ],
                      ),
                      Text(
                        "Ng??y 1: H???i An \n 13h00: B???n m??nh xu???ng s??n bay r???i di chuy???n v??? n??i ngh??? ??? H???i An \n Nh???ng ??i???m nh???t ?????nh c???n check-in: Ph??? c???, d???c s??ng Thu B???n, n?????c M??t, Faifo Coffe (130 Tr???n Ph??, H???i An), h???m t?????ng v??ng (?????i di???n Faifo Coffee)\n18h00: V??? ngh??? ng??i r???i t???i ??i ??n M??? Qu???ng, Cao L???u, tham quan ch??? ????m b??n kia s??ng v?? ng???m ????n l???ng (c??c b???n c?? th??? thu?? thuy???n th??? hoa ????ng)\n\nNg??y 2: R???ng d???a B???y M???u (H???i An) ??? ???? N???ng\n06h00: B???n m??nh d???y s???m ????? chu???n b???, ??n s??ng B??n M???m b?? Trung, tr??? l???i Ch??a C???u v?? h??m qua ????ng qu??, s??ng s???m ??t ng?????i h??n.",
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                ),
                flex: 7,
              ),
            ),
            // Expanded(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Column(
            //         children: [
            //           CircleAvatar(
            //             backgroundColor: Colors.white,
            //           ),
            //           SizedBox(
            //             height: 8,
            //           ),
            //           Text(
            //             "Safety",
            //             style: TextStyle(
            //               fontSize: 12,
            //             ),
            //           )
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           CircleAvatar(
            //             backgroundColor: Colors.white,
            //           ),
            //           SizedBox(
            //             height: 8,
            //           ),
            //           Text(
            //             "WiFi",
            //             style: TextStyle(
            //               fontSize: 12,
            //             ),
            //           )
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           CircleAvatar(
            //             backgroundColor: Colors.white,
            //           ),
            //           SizedBox(
            //             height: 8,
            //           ),
            //           Text(
            //             "Lunch",
            //             style: TextStyle(
            //               fontSize: 12,
            //             ),
            //           )
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           CircleAvatar(
            //             backgroundColor: Colors.white,
            //           ),
            //           SizedBox(
            //             height: 8,
            //           ),
            //           Text(
            //             "Spa",
            //             style: TextStyle(
            //               fontSize: 12,
            //             ),
            //           )
            //         ],
            //       )
            //     ],
            //   ),
            //   flex: 3,
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                children: [
                  Column(
                    children: [
                      Ink(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: kPrimaryColor,
                          ),
                        ),
                        child: Icon(
                          Icons.location_on,
                          color: kPrimaryColor,
                        ),
                      ),
                      Text(
                        "H?? Ti??n",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  Text(
                    "-----------------------",
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  Column(
                    children: [
                      Ink(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.red.shade400),
                        ),
                        child: Icon(
                          Icons.assistant_photo,
                          color: Colors.red.shade400,
                        ),
                      ),
                      Text(
                        "Ph?? Qu???c",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Wrap(
                    children: [
                      Text(
                        "Ng??y kh???i h??nh:",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Text(
                        "12/05/2021",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Wrap(
                    children: [
                      Text(
                        "Ng??y k???t th??c:",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Text(
                        "18/05/2021",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
