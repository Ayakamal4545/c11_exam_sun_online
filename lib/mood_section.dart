import 'package:c11_exam_sun_online/exercise_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoodSection extends StatelessWidget {
  const MoodSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> exercises = [
      {
        'icon': Icons.spa, // Replace with your own icon
        'title': 'Relaxation',
        'color': Colors.purple[100]!,
      },
      {
        'icon': Icons.self_improvement, // Replace with your own icon
        'title': 'Meditation',
        'color': Colors.pink[100]!,
      },
      {
        'icon': Icons.air, // Replace with your own icon
        'title': 'Breathing',
        'color': Colors.orange[100]!,
      },
      {
        'icon': Icons.self_improvement, // Replace with your own icon
        'title': 'Yoga',
        'color': Colors.blue[100]!,
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Exercise",
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'See more',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
        Container(
          height: 200,
          child: GridView.builder(
            shrinkWrap: true,
           // physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 2.0,
            ),
            itemCount: exercises.length,
            itemBuilder: (context, index) {
              final exercise = exercises[index];
              return MoodCard(
                icon: exercise['icon'],
                title: exercise['title'],
                color: exercise['color'],
              );
            },
          ),
        ),
      ],
    );
  }
}
class MoodCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const MoodCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.black54),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}