// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:store/widgets/item.dart';

// ignore: camel_case_types
class casual extends StatelessWidget {
  casual({Key? key}) : super(key: key);
  static String id = 'casual';

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff8fa),
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // set background color to transparent
        elevation: 0, // remove the elevation
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assest/images/Casualclothes.png',
                height: 90,
                width: 75,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Casual',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                    fontSize: 35,
                    color: Color(0xff050505)),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              // Use a Material design search bar
              child: TextField(
                cursorColor: Colors.black,
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  // Add a clear button to the search bar

                  // Add a search icon or button to the search bar
                  prefixIcon: IconButton(
                    icon: const Icon(
                      Icons.search,
                    ),
                    color: const Color(0xfff56a82),
                    onPressed: () {
                      // Perform the search here
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(color: Color(0xfff56a82), width: 3),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      item(
                        onTap: () {},
                        color: const Color(0x69f9aab5),
                        image: 'assest/images/ca1.png',
                        text1: 'Casual',
                        text2: '\$400.00',
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      item(
                        onTap: () {},
                        color: const Color(0x85d9d9d9),
                        image: 'assest/images/ca2.png',
                        text1: 'Casual',
                        text2: '\$500.00',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      item(
                        onTap: () {},
                        color: const Color(0x85d9d9d9),
                        image: 'assest/images/ca3.png',
                        text1: 'Casual',
                        text2: '\$700.00',
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      item(
                        onTap: () {},
                        color: const Color(0x69f9aab5),
                        image: 'assest/images/ca4.png',
                        text1: 'Casual',
                        text2: '\$750.00',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      item(
                        onTap: () {},
                        color: const Color(0x69f9aab5),
                        image: 'assest/images/ca5.png',
                        text1: 'Casual',
                        text2: '\$450.00',
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      item(
                        onTap: () {},
                        color: const Color(0x85d9d9d9),
                        image: 'assest/images/ca6.png',
                        text1: 'Casual',
                        text2: '\$350.00',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      item(
                        onTap: () {},
                        color: const Color(0x85d9d9d9),
                        image: 'assest/images/ca7.png',
                        text1: 'Casual',
                        text2: '\$600.00',
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      item(
                        onTap: () {},
                        color: const Color(0x69f9aab5),
                        image: 'assest/images/ca8.png',
                        text1: 'Casual',
                        text2: '\$400.00',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
