import 'package:e_book/screens/albulm_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.notifications_active,
                          size: 30,
                        ),
                      ],
                    )
                  ],
                ),),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: const Text(
                      'Popular Book\'s',
                      style: TextStyle(fontSize: 30),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 180,
                child: Stack(
                  children: [
                    Positioned(
                      left: -20,
                      top: 0,
                      right: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 180,
                        child: PageView.builder(
                          controller: PageController(viewportFraction: 0.8),
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (_, index) {
                            return Container(
                              height: 180,
                              margin: const EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                  image: AssetImage('asset/images/img_3.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                
                height: 40,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_, i) {
                      return Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 20,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text('Labels')),
                      );
                    }),
              ),
              
              Expanded(child: NestedScrollView(
                body: TabBarView(
                  children: [
                  ListView.builder(
                    itemCount: 5,
                    itemBuilder:(_,i){
                      return AlbulmWidget();
                    }
                  ),
                  ListTile(leading: CircleAvatar(backgroundColor: Colors.grey,),title: Text('Content'),),
                  ListTile(leading: CircleAvatar(backgroundColor: Colors.grey,),title: Text('Content'),),
                ],
                controller: _tabController,
                ),
                controller: _scrollController,
                headerSliverBuilder: (BuildContext context, isScroll) {
                  return [
                     SliverAppBar(
                      backgroundColor: Colors.white,
                      pinned: true,
                      bottom: PreferredSize(preferredSize: Size.fromHeight(50),
                       child: Container(
                        margin: const EdgeInsets.only(bottom: 20),

                        child: 
                         TabBar(
                          indicatorPadding: const EdgeInsets.all(0),
                          controller: _tabController,
                          labelPadding: const EdgeInsets.only(right: 10),
                          indicatorSize: TabBarIndicatorSize.label,
                          isScrollable: true,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                offset:const Offset(0, 0),
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 7,

                              )

                            ],
                          ),
                          tabs: [                      
                             Container(
                              width: 120,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow:[ 
                                  BoxShadow(
                                  
                                  color: Colors.grey.withOpacity(0.3),
                                  offset: const Offset(0, 0),
                                  blurRadius: 7,
                                  ),
                                ]
                              ),
                              child:const Center(
                                child:  Text('New',style: TextStyle(color: Colors.white),
                                ),
                              ),
                              ),
                              Container(
                              width: 120,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow:[ 
                                  BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  offset: const Offset(0, 0),
                                  blurRadius: 7,
                                  ),
                                ]
                              ),
                              child: const Center(
                                child:  Text('Popular',style: TextStyle(color: Colors.white),
                                ),
                              ),
                              ),
                              Container(
                              width: 120,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow:[ 
                                  BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  offset: const Offset(0, 0),
                                  blurRadius: 7,
                                  ),
                                ]
                              ),
                              child:  const Center(
                                child: Text('Trending',style: TextStyle(color: Colors.white),
                                ),
                              ),
                              ),
                              
                          ]
                          ),
                          ),
                       ),
                    ),
                  ];
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
