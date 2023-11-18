import 'package:flutter/material.dart';

class HistoryPage2 extends StatefulWidget {
  @override
  _HistoryPage2State createState() => _HistoryPage2State();
}

class _HistoryPage2State extends State<HistoryPage2> {
  int selectedStar = 0; // To track the selected star

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: width * 0.1,
                height: width * 0.1,
                margin: EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.shopping_bag, color: Colors.white),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "06 Oct 2023",
                        style: TextStyle(color: Colors.grey, fontSize: width * 0.03),
                      ),
                      SizedBox(width: width * 0.55),
                      Text(
                        "Completed",
                        style: TextStyle(color: Colors.green, fontSize: width * 0.03),
                      ),
                    ],
                  ),
                  SizedBox(height: width * 0.01),
                  Text(
                    "Mcdonald’s Kaliurang, Yogyakarta",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: width * 0.01),
                  Text(
                    "1 PaNas Spesial, 2 Chicken Muffin",
                    style: TextStyle(color: Colors.black, fontSize: width * 0.03),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: width * 0.02),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(height: width * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "32.000",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.04,
                        ),
                      ),
                      SizedBox(width: width * 0.01),
                      Container(
                        width: width * 0.2,
                        height: width * 0.07,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(width * 0.04),
                        ),
                        child: Center(
                          child: Text(
                            "Saved 22K",
                            style: TextStyle(color: Colors.yellow, fontSize: width * 0.02),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                "3 items",
                style: TextStyle(color: Colors.grey, fontSize: width * 0.03),
              ),
            ],
          ),
          SizedBox(height: width * 0.01),
          Container(
            width: width * 0.55,
            height: width * 0.1,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(width * 0.04),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Rate Your Food",
                  style: TextStyle(color: Colors.black, fontSize: width * 0.025, fontWeight: FontWeight.bold),
                ),
                ...List.generate(5, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedStar = index + 1;
                      });
                    },
                    child: Icon(
                      index < selectedStar
                          ? Icons.star
                          : Icons.star_border,
                      color: index < selectedStar
                          ? Colors.yellow
                          : Colors.grey,
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
