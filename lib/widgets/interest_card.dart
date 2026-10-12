import 'package:flutter/material.dart';

class InterestCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const InterestCard({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 7,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Card image
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: AspectRatio(
              aspectRatio: 1.65,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: const Color(0xFFE5E7EB),
                    child: const Icon(
                      Icons.image,
                      size: 35,
                      color: Colors.blueGrey,
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 8),

          // Card title
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF414B55),
            ),
          ),

          const SizedBox(height: 5),

          // Description
          SizedBox(
            height: 30,
            child: Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 10.5,
                height: 1.35,
                color: Color(0xFF777F89),
              ),
            ),
          ),

          const SizedBox(height: 7),

          // View More button
          SizedBox(
            width: double.infinity,
            height: 31,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color(0xFFF4F5F7),
                foregroundColor: const Color(0xFF0878E8),
                padding: EdgeInsets.zero,
                side: const BorderSide(
                  color: Color(0xFFE8E9EC),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text(
                'View More',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}