import 'dart:io';

import 'package:bookapp/book.dart';
import 'package:bookapp/explore.dart';
import 'package:bookapp/my_library_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}
const int libraryIndex = 0;
const int exploreIndex = 1;

class _MainScreenState extends State<MainScreen> {
  
  int selectedScreenIndex = libraryIndex;
  final List<int> _history = [];
  final GlobalKey<NavigatorState> _libraryKey = GlobalKey();
  final GlobalKey<NavigatorState> _exploreKey = GlobalKey();
  final GlobalKey<NavigatorState> _bookKey = GlobalKey();


late final map = {
    libraryIndex: _libraryKey,
    exploreIndex: _exploreKey,
   
    
  };
Future<bool> _onWillPop() async {
    final NavigatorState currentSelectedTabNavigatorState =
        map[selectedScreenIndex]!.currentState!;
    if (currentSelectedTabNavigatorState.canPop()) {
      currentSelectedTabNavigatorState.pop();
      return false;
    } else if (_history.isNotEmpty) {
      setState(() {
        selectedScreenIndex = _history.last;
        _history.removeLast();
      });
      return false;
    }

    return true;
  }




  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Stack(
          children: [
            IndexedStack(
              index: selectedScreenIndex,
              children: [
                // MyLibraryScreen(),
                // ExploreScreen(),
                // BookScreen(),
                Navigator(
                      key: _libraryKey,
                      onGenerateRoute: (settings) {
                        return MaterialPageRoute(builder: (context) => const MyLibraryScreen(),);
                      },
                    ),
                    Navigator(
                      key: _exploreKey,
                      onGenerateRoute: (settings) {
                        return MaterialPageRoute(builder: (context) => const ExploreScreen(),);
                      },
                    ),
                    
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 10)
                ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        onPressed: () {
                          setState(() {
                            _history.remove(selectedScreenIndex);
                            _history.add(selectedScreenIndex);
                            selectedScreenIndex=libraryIndex;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          selectedScreenIndex==0?Image.asset('assets/icons/library.png'):
                          Image.asset('assets/images/ion_library.png'),
                             Text(
                              'My Library',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color:selectedScreenIndex==0? Color(0xFF165C73):Color(0xFF979797),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        onPressed: () {
                          
                          setState(() {
                            _history.remove(selectedScreenIndex);
                            _history.add(selectedScreenIndex);
                            selectedScreenIndex=exploreIndex;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           selectedScreenIndex==1?Image.asset('assets/images/exploreselected.png'):
                           Image.asset('assets/icons/explore.png'),
                             Text(
                              'Explore',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color:selectedScreenIndex==1?Color(0xFF165C73): Color(0xFF979797),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/shop.png'),
                            const Text(
                              'Cart',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF979797),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/community.png'),
                            const Text(
                              'Community',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF979797),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
