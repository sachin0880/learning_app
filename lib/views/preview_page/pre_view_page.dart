import 'package:flutter/material.dart';

class CoursePreviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/best_seller.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    icon: Icon(Icons.play_circle, color: Colors.white),
                    label: Text("Course Preview", style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.yellow[700],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("Best Seller", style: TextStyle(color: Colors.white)),
                      ),
                      Spacer(),
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 4),
                      Text("4.8", style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 4),
                      Text("(365 reviews)", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Design Thinking Fundamentals",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text("Robert Green", style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 16),
                      Icon(Icons.book, size: 16, color: Colors.grey),
                      SizedBox(width: 4),
                      Text("32 Lessons", style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 16),
                      Icon(Icons.verified, size: 16, color: Colors.grey),
                      SizedBox(width: 4),
                      Text("Certificate", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(height: 16),

                  DefaultTabController(
                    length: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TabBar(
                          labelColor: Colors.yellow[700],
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.yellow[700],
                          tabs: [
                            Tab(text: "About"),
                            Tab(text: "Lessons"),
                            Tab(text: "Reviews"),
                          ],
                        ),
                        SizedBox(
                          height: 200,
                          child: TabBarView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "About Course",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "My wife & I have moved 6 times in the last 25 years. Obviously, we've dealt with many realtors...",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Center(child: Text("Lessons content here")),
                              Center(child: Text("Reviews content here")),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16),
                  Divider(),
                  SizedBox(height: 16),
                  Text("Tutor", style: TextStyle(fontWeight: FontWeight.bold)),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/tutor.jpg'),
                      radius: 30,
                    ),
                    title: Text("John Doe"),
                    subtitle: Text("Design Expert"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.message, color: Colors.yellow[700]),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.phone, color: Colors.yellow[700]),
                        ),
                      ],
                    ),
                  ),

                  Divider(),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Price", style: TextStyle(color: Colors.grey)),
                          SizedBox(height: 4),
                          Text(
                            "\$180.00",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow[700],
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                        ),
                        child: Text("Enroll Now", style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
