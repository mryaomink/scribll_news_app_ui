import 'package:flutter/material.dart';
import 'package:pandi_news/screens/yao_home.dart';

class YaoProfile extends StatefulWidget {
  const YaoProfile({super.key});

  @override
  State<YaoProfile> createState() => _YaoProfileState();
}

class _YaoProfileState extends State<YaoProfile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const YaoHome()));
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Profile"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.send,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAvatar(),
            const Divider(),
            _buildInfo(),
            const Divider(),
            //           SizedBox(
            //             height: 48.0, // Height of the TabBar
            //             child: Stack(
            //               children: [
            //                 // Positioned.fill(
            //                 //   bottom: 0.0,
            //                 //   child: Align(
            //                 //     alignment: Alignment.bottomCenter,
            //                 //     child: Container(
            //                 //       height: 2.0, // Height of the line
            //                 //       color: Colors.grey,
            //                 //     ),
            //                 //   ),
            //                 // ),
            //                 TabBar(
            //                   controller: _tabController,
            //                   tabs: const [
            //                     Tab(
            //                       text: 'Articles',
            //                     ),
            //                     Tab(
            //                       text: 'About',
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // );
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.blue,
              tabs: const [
                Tab(
                  text: 'Articles',
                ),
                Tab(
                  text: 'About',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '365 Articles',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.article)),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.dashboard))
                            ],
                          ),
                        ],
                      ),
                      // Grid View Tab
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: SizedBox(
                                height: 120,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Card(
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1687220296822-5ae701b3b360?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
                                        fit: BoxFit.cover,
                                        width: 120,
                                        height: 120,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Judul',
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 12,
                                              backgroundImage: NetworkImage(
                                                  'https://images.unsplash.com/photo-1570158268183-d296b2892211?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
                                            ),
                                            SizedBox(
                                              width: 6.0,
                                            ),
                                            Text(
                                              'Nama Author',
                                              style: TextStyle(
                                                fontSize: 10.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Text('12 days Ago'),
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                    Icons.bookmark_add)),
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                    Icons.more_vert_outlined))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),

                  // List View Tab
                  ListView(
                    scrollDirection: Axis.vertical,
                    children: const [
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Deskripsi',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim nulla aliquet porttitor lacus luctus.'),
                            Divider(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Social Media',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                ListTile(
                                  leading: Icon(Icons.chat),
                                  title: Text('whatsapp'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.facebook),
                                  title: Text('Facebook'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.social_distance),
                                  title: Text('twitter'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.photo),
                                  title: Text('instagram'),
                                ),
                              ],
                            ),
                            Divider(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'More Info',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                ListTile(
                                  leading: Icon(Icons.wordpress_outlined),
                                  title: Text('whatsapp'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.location_on_outlined),
                                  title: Text('Banjarmasin,Kalimantan Selatan'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.info),
                                  title: Text('joined since 2023'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.bar_chart),
                                  title: Text('2.858.432 reader'),
                                ),
                              ],
                            ),
                          ],
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
    );
  }

  Row _buildInfo() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text('365'),
            SizedBox(
              height: 10.0,
            ),
            Text('articles')
          ],
        ),
        VerticalDivider(
          thickness: 2,
          color: Colors.black,
        ),
        Column(
          children: [
            Text('146'),
            SizedBox(
              height: 10.0,
            ),
            Text('following')
          ],
        ),
        VerticalDivider(
          thickness: 2,
          color: Colors.black,
        ),
        Column(
          children: [
            Text('129.5K'),
            SizedBox(
              height: 10.0,
            ),
            Text('followers')
          ],
        ),
      ],
    );
  }

  SizedBox _buildAvatar() {
    return SizedBox(
      height: 80,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=461&q=80',
          ),
        ),
        title: const Text(
          'Mrs.Yaomink',
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
        subtitle: const Text('@yaomink'),
        trailing: OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: const BorderSide(
              color: Color(0xffA47461),
            ),
          ),
          onPressed: () {},
          child: const Text(
            "Following",
            style: TextStyle(
              color: Color(0xffA47461),
            ),
          ),
        ),
      ),
    );
  }
}
