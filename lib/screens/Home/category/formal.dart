import 'package:flutter/material.dart';
import 'package:store/widgets/item.dart';

class formal extends StatelessWidget {
  formal({Key? key}) : super(key: key);
  static String id = 'formal';

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff8fa),
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // set background color to transparent
        elevation: 0, // remove the elevation
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assest/images/Formalclothing.png',
                height: 90,
                width: 75,
              ),
              Text(
                'Formal',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                    fontSize: 35,
                    color: Color(0xff050505)),
              )
            ],
          ),
          SizedBox(
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
                    icon: Icon(
                      Icons.search,
                    ),
                    color: Color(0xfff56a82),
                    onPressed: () {
                      // Perform the search here
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Color(0xfff56a82), width: 3),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
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
                        color: Color(0x69f9aab5),
                        image: 'assest/images/f6.png',
                        text1: 'Formal',
                        text2: '\$400.00',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      item(
                        onTap: () {},
                        color: Color(0x85d9d9d9),
                        image: 'assest/images/f5.png',
                        text1: 'Formal',
                        text2: '\$500.00',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      item(
                        onTap: () {},
                        color: Color(0x85d9d9d9),
                        image: 'assest/images/f7.png',
                        text1: 'Formal',
                        text2: '\$700.00',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      item(
                        onTap: () {},
                        color: Color(0x69f9aab5),
                        image: 'assest/images/f8.png',
                        text1: 'Formal',
                        text2: '\$750.00',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      item(
                        onTap: () {},
                        color: Color(0x69f9aab5),
                        image: 'assest/images/f1.png',
                        text1: 'Formal',
                        text2: '\$450.00',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      item(
                        onTap: () {},
                        color: Color(0x85d9d9d9),
                        image: 'assest/images/f2.png',
                        text1: 'Formal',
                        text2: '\$350.00',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      item(
                        onTap: () {},
                        color: Color(0x85d9d9d9),
                        image: 'assest/images/f3.png',
                        text1: 'Formal',
                        text2: '\$600.00',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      item(
                        onTap: () {},
                        color: Color(0x69f9aab5),
                        image: 'assest/images/f4.png',
                        text1: 'Formal',
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
