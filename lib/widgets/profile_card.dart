import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          // Profile picture
          Container(
            width: 124,
            height: 124,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFE0E4E8),
              border: Border.all(color: const Color(0xFFE0E4E8), width: 2),
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/profile.png',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.person,
                    size: 85,
                    color: Colors.blueGrey,
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Name
          const Text(
            'Md. Shafin Shadman',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Color(0xFF414B55),
            ),
          ),

          const SizedBox(height: 3),

          // Subtitle
          const Text(
            'Flutter Developer',
            style: TextStyle(fontSize: 14, color: Color(0xFF929AA4)),
          ),

          const SizedBox(height: 12),

          // Bio
          const Text(
            'Passionate about creating user-friendly and '
            'engaging digital experiences.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.5,
              height: 1.5,
              color: Color(0xFF515B65),
            ),
          ),

          const SizedBox(height: 12),

          const Divider(color: Color(0xFFEEEEEE), height: 1),

          const SizedBox(height: 10),

          // Email
          const Row(
            children: [
              Icon(Icons.email, size: 18, color: Color(0xFF414B55)),
              SizedBox(width: 9),
              Expanded(
                child: Text(
                  'shafinshadman2@gmail.com',
                  style: TextStyle(fontSize: 12, color: Color(0xFF515B65)),
                ),
              ),
            ],
          ),

          const SizedBox(height: 7),

          // Phone
          const Row(
            children: [
              Icon(Icons.phone, size: 18, color: Color(0xFF414B55)),
              SizedBox(width: 9),
              Expanded(
                child: Text(
                  '01783213536',
                  style: TextStyle(fontSize: 12, color: Color(0xFF515B65)),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Follow and Message buttons
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 38,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0878E8),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text('Follow', style: TextStyle(fontSize: 13)),
                  ),
                ),
              ),

              const SizedBox(width: 9),

              Expanded(
                child: SizedBox(
                  height: 38,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF414B55),
                      side: const BorderSide(color: Color(0xFFD5D5D5)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text(
                      'Message',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
