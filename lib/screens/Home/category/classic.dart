// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:store/widgets/item.dart';

// ignore: camel_case_types
class classic extends StatelessWidget {
  classic({Key? key}) : super(key: key);
  static String id = 'classic';

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
                'assest/images/Classicclothing.png',
                height: 90,
                width: 75,
              ),
              const Text(
                'Classic',
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
              child: TextField(
                cursorColor: Colors.black,
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0), // Adjust horizontal padding
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              flex: 1, // Adjust flex based on your needs
                              child: item(
                                onTap: () {},
                                color: const Color(0x69f9aab5),
                                image: 'assest/images/cl1.png',
                                text1: 'Classic',
                                text2: '\$400.00',
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              flex: 1,
                              child: item(
                                onTap: () {},
                                color: const Color(0x85d9d9d9),
                                image: 'assest/images/cl2.png',
                                text1: 'Classic',
                                text2: '\$500.00',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: item(
                                onTap: () {},
                                color: const Color(0x85d9d9d9),
                                image: 'assest/images/cl3.png',
                                text1: 'Classic',
                                text2: '\$700.00',
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              flex: 1,
                              child: item(
                                onTap: () {},
                                color: const Color(0x69f9aab5),
                                image: 'assest/images/cl4.png',
                                text1: 'Classic',
                                text2: '\$750.00',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: item(
                                onTap: () {},
                                color: const Color(0x69f9aab5),
                                image: 'assest/images/cl6.png',
                                text1: 'Classic',
                                text2: '\$450.00',
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              flex: 1,
                              child: item(
                                onTap: () {},
                                color: const Color(0x85d9d9d9),
                                image: 'assest/images/cl5.png',
                                text1: 'Classic',
                                text2: '\$350.00',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: item(
                                onTap: () {},
                                color: const Color(0x85d9d9d9),
                                image: 'assest/images/cl7.png',
                                text1: 'Classic',
                                text2: '\$600.00',
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              flex: 1,
                              child: item(
                                onTap: () {},
                                color: const Color(0x69f9aab5),
                                image: 'assest/images/cl8.png',
                                text1: 'Classic',
                                text2: '\$400.00',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
