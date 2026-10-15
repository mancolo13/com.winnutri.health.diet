import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Diary'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.35)),
              ),
              child: const Column(
                children: [
                  Text('Daily Calorie Target', style: TextStyle(color: Colors.white70, fontSize: 12)),
                  SizedBox(height: 6),
                  Text('1,640 / 2,200 kcal', style: TextStyle(color: AppTheme.primaryColor, fontSize: 28, fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Text('Remaining: 560 kcal • Burned in workout: 340 kcal', style: TextStyle(color: Colors.white60, fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text("Today's Meal Log", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            _buildMealCard('Breakfast', 'Avocado Omelet with Sourdough', '520 kcal', Icons.breakfast_dining),
            _buildMealCard('Lunch', 'Chicken Quinoa & Veggie Bowl', '680 kcal', Icons.lunch_dining),
            _buildMealCard('Dinner', 'Baked Salmon with Asparagus', '440 kcal', Icons.dinner_dining),
          ],
        ),
      ),
    );
  }

  Widget _buildMealCard(String meal, String menu, String cals, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppTheme.primaryColor.withValues(alpha: 0.2),
            child: Icon(icon, color: AppTheme.primaryColor, size: 20),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(meal, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                Text(menu, style: const TextStyle(color: Colors.white60, fontSize: 12)),
              ],
            ),
          ),
          Text(cals, style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 14)),
        ],
      ),
    );
  }
}
