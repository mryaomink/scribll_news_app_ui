import 'package:flutter/material.dart';
import 'package:pandi_news/widget/home_banner.dart';

class YaoBeranda extends StatelessWidget {
  const YaoBeranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/logos.png',
              fit: BoxFit.cover,
              width: 30,
              height: 30,
            ),
            const SizedBox(
              width: 8.0,
            ),
            const Text("Scribblr"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.bookmark_added_outlined,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const HomeBanner(),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recent Articles',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_right_alt,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const YaoRecentArtikel(),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Yours Articles',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_right_alt,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 255,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  physics: const ScrollPhysics(),
                  primary: false,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 190,
                            height: 180,
                            child: Card(
                              child: Image.network(
                                'https://images.unsplash.com/photo-1508921340878-ba53e1f016ec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            '10 tips Menjadi Entreprenuer',
                            maxLines: 2,
                          ),
                          SizedBox(
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const CircleAvatar(
                                  radius: 12,
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1508921340878-ba53e1f016ec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                const Text(
                                  'Author',
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      '2 days ago',
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.black),
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.more_horiz,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class YaoRecentArtikel extends StatelessWidget {
  const YaoRecentArtikel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 255,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        physics: const ScrollPhysics(),
        primary: false,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 190,
                  height: 180,
                  child: Card(
                    child: Image.network(
                      'https://images.unsplash.com/photo-1559170370-6f4575c8f83c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1030&q=80',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  '10 tips Menjadi Entreprenuer',
                  maxLines: 2,
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 12,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1622281587418-f2f4fc06ae7a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1587&q=80'),
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      const Text(
                        'Author',
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            '2 days ago',
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.black),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_horiz,
                              size: 20,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
