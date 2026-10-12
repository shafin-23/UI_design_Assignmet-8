
import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../widgets/interest_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F7),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 24),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 460,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ProfileCard(),

                      const SizedBox(height: 20),

                      // Interests heading
                      const Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Color(0xFFD5D5D5),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Text(
                              'Interests',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF414B55),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color(0xFFD5D5D5),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      // Interest cards
                      const Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: InterestCard(
                              title: 'Travel',
                              description:
                              'Exploring new places around the world',
                              imagePath:
                              'assets/images/travel.jpg',
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: InterestCard(
                              title: 'Photography',
                              description:
                              'Capturing moments through the lens',
                              imagePath:
                              'assets/images/photography.jpg',
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
