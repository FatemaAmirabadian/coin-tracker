import 'package:coin_tracker/controllers/coin_controller.dart';
import 'package:flutter/material.dart';
import 'package:coin_tracker/utils.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final CoinController controller = Get.put(CoinController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff494f55),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 50),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Coin Tracker',
                  style: textStyle(25, Colors.white, FontWeight.bold)),
              Obx(
                    () => controller.isLoading.value
                    ? const Center(
                  child: CircularProgressIndicator(),
                )
                    : ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(right: 10),
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[700],
                                          borderRadius:
                                          BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey[700]!,
                                                offset: const Offset(4, 4),
                                                blurRadius: 5)
                                          ]),
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Image.network(controller
                                            .coinsList[index].image),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        controller.coinsList[index].name,
                                        style: textStyle(18, Colors.white,
                                            FontWeight.w600),
                                      ),
                                      Text(
                                        ' ${controller.coinsList[index].priceChange24H.toStringAsFixed(2)} %',
                                        style: textStyle(18, Colors.grey,
                                            FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '\$ ${controller.coinsList[index].currentPrice.round()}',
                                    style: textStyle(
                                        18, Colors.white, FontWeight.w600),
                                  ),
                                  Text(
                                    controller.coinsList[index].symbol
                                        .toUpperCase(),
                                    style: textStyle(
                                        18, Colors.grey, FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
