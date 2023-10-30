import 'package:flutter/material.dart';

import '../../../core/style/app_colors.dart';
import '../widgets/form_template.dart';
import '../widgets/search_field.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ordering',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF172027),
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Center(
            child: Text(
              'Step 1',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF172027),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Sender details',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF172027),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(36),
                            color: AppColors.mainColor),
                        child: const Center(
                          child: Text(
                            'Add adress',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(
                            0xFFE7ECF0,
                          ),
                          borderRadius: BorderRadius.circular(36),
                        ),
                        child: const Center(
                          child: Text(
                            'Select address',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          if (true)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormFieldTemplate(Icons.account_circle_outlined, 'Full Name'),
                FormFieldTemplate(Icons.email, 'Email'),
                FormFieldTemplate(Icons.phone, 'Phone number'),
                Divider(),
                FormFieldTemplate(Icons.location_on, 'Country'),
                FormFieldTemplate(Icons.location_city, 'City'),
                FormFieldTemplate(Icons.home, 'Address line 1'),
                Text(
                  'Add address line +',
                  style: TextStyle(
                      color: Color(0xFFEA560D),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                FormFieldTemplate(Icons.markunread_mailbox_outlined, 'Postcode'),
              ],
            ),
          searchField(),
          const SizedBox(height: 20),
          Stack(
            fit: StackFit.passthrough,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(
                      0xFF172027,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x40000000).withOpacity(0.25),
                          blurRadius: 10,
                          offset: const Offset(0, 6))
                    ]),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Denilev Egor',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                          softWrap: true,
                        ),
                        SizedBox(height: 7),
                        Padding(
                          padding: EdgeInsets.only(right: 112),
                          child: Text(
                            "Belarus, Minsk, Derzhinskogo 3b, 80100",
                            style: TextStyle(
                                color: Color(0xFFFFFBF9),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            softWrap: true,
                          ),
                        ),
                      ]),
                ),
              ),
              Positioned(
                  top: 18,
                  right: 18,
                  child: Image.asset(
                    'assets/icons/writeIcon.png',
                    height: 20,
                    width: 20,
                  ))
            ],
          ),
          const SizedBox(height: 40),
          const Text(
            'Recipient adress',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF172027),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(36),
                            color: AppColors.mainColor),
                        child: const Center(
                          child: Text(
                            'Add adress',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(
                            0xFFE7ECF0,
                          ),
                          borderRadius: BorderRadius.circular(36),
                        ),
                        child: const Center(
                          child: Text(
                            'Select address',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          searchField(),
          const SizedBox(height: 20),
          Stack(
            fit: StackFit.passthrough,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(
                      0xFF172027,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x40000000).withOpacity(0.25),
                          blurRadius: 10,
                          offset: const Offset(0, 6))
                    ]),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ko Yuri',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                          softWrap: true,
                        ),
                        SizedBox(height: 7),
                        Padding(
                          padding: EdgeInsets.only(right: 112),
                          child: Text(
                            "Italy, Naple, Via Toledo 256, 220069",
                            style: TextStyle(
                                color: Color(0xFFFFFBF9),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            softWrap: true,
                          ),
                        ),
                      ]),
                ),
              ),
              Positioned(
                  top: 18,
                  right: 18,
                  child: Image.asset(
                    'assets/icons/writeIcon.png',
                    height: 20,
                    width: 20,
                  ))
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                'Next step',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ))
        ],
      ),
    );
  }
}
