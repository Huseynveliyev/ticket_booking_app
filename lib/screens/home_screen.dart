import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/hotel_screen.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info.dart';

import '../utils/app_styles.dart';
import '../widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: Styles.headLineStyle3,
                          ),
                          const Gap(4),
                          Text(
                            "Book Tickets",
                            style: Styles.headLineStyle1,
                          ),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/img_1.png',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Gap(25),
                  Row(
                    children: [
                      SizedBox(
                        width: 345,
                        height: 50,
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                width: 1,
                                color: Colors.transparent,
                              ),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            labelText: 'Search',
                            prefixIcon: const Icon(
                                FluentSystemIcons.ic_fluent_search_regular,
                                color: Color(0xffBfc205)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(40),
                  const AppDoubleTextWidget(
                    bigText: 'Upcoming Flights',
                    smallText: 'view all',
                  ),
                ],
              ),
            ),
            const Gap(15),
            SingleChildScrollView(
                padding: const EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: ticketList
                        .map((singleTicket) => TicketView(
                              ticket: singleTicket,
                            ))
                        .toList())),
            const Gap(10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: const AppDoubleTextWidget(
                bigText: 'Hotels',
                smallText: 'view all',
              ),
            ),
            const Gap(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                  children: hotelList
                      .map((SingleHotel) => HotelScreen(hotel: SingleHotel))
                      .toList()),
            ),
          ],
        ));
  }
}
