// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:store/widgets/item.dart';
import 'package:store/widgets/listh.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);
  static String id = 'home';

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff8fa),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.7,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assest/images/profile.jpeg'),
                  radius: 40,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 35),
                      child: Center(
                        child: Text(
                          'Hi,',
                          style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 17,
                              color: Color(0xfff56a82)),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Radwa Ashraf',
                        style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 23,
                            color: Color(0xff050505)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
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
            height: 30,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.86,
                          height: MediaQuery.of(context).size.height * 0.2,
                          color: const Color(0x88f56a82),
                        ),
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Image.asset(
                              'assest/images/1.png',
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.5,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text(
                                  'Big Sale !!',
                                  style: TextStyle(
                                    color: const Color(0xffffffff),
                                    fontFamily: "Pacifico",
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.035,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.009,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 75),
                                child: Text(
                                  'Get the Brandy Fashion at\na discount of up to 50%',
                                  style: TextStyle(
                                    color: const Color(0xffffffff),
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        list(
                          onTap: () {},
                          text1: 'All',
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        list(
                          onTap: () {},
                          text1: 'Popular',
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        list(
                          onTap: () {},
                          text1: 'Recent',
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        list(
                          onTap: () {},
                          text1: 'Recomended',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            item(
                              color: const Color(0x85d9d9d9),
                              image: 'assest/images/b.png',
                              text1: 'Classic Dress',
                              text2: '\$350.00',
                              onTap: () {},
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            item(
                              color: const Color(0x69f9aab5),
                              image: 'assest/images/a.png',
                              text1: 'Classic Dress',
                              text2: '\$500.00',
                              onTap: () {},
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          children: [
                            item(
                              color: const Color(0x69f9aab5),
                              image: 'assest/images/jg.png',
                              text1: 'Jumpsuit',
                              text2: '\$400.00',
                              onTap: () {},
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            item(
                              color: const Color(0x85d9d9d9),
                              image: 'assest/images/jgg.png',
                              text1: 'Jumpsuit',
                              text2: '\$600.00',
                              onTap: () {},
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          children: [
                            item(
                              color: const Color(0x85d9d9d9),
                              image: 'assest/images/sb.png',
                              text1: 'suit',
                              text2: '\$600.00',
                              onTap: () {},
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            item(
                              color: const Color(0x69f9aab5),
                              image: 'assest/images/d.png',
                              text1: 'Dress',
                              text2: '\$300.00',
                              onTap: () {},
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          children: [
                            item(
                              color: const Color(0x69f9aab5),
                              image: 'assest/images/t.png',
                              text1: 'Jeans pants',
                              text2: '\$250.00',
                              onTap: () {},
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            item(
                              color: const Color(0x85d9d9d9),
                              image: 'assest/images/tt.png',
                              text1: 'Jeans pants',
                              text2: '\$860.00',
                              onTap: () {},
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          children: [
                            item(
                              color: const Color(0x69f9aab5),
                              image: 'assest/images/bll.png',
                              text1: 'blouse',
                              text2: '\$300.00',
                              onTap: () {},
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            item(
                              color: const Color(0x85d9d9d9),
                              image: 'assest/images/bl.png',
                              text1: 'blouse',
                              text2: '\$300.00',
                              onTap: () {},
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          children: [
                            item(
                              color: const Color(0x85d9d9d9),
                              image: 'assest/images/s8.png',
                              text1: 'Sport suit',
                              text2: '\$400.00',
                              onTap: () {},
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            item(
                              color: const Color(0x69f9aab5),
                              image: 'assest/images/s5.png',
                              text1: 'Sport suit',
                              text2: '\$550.00',
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
