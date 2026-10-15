import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final recipes = [
      {'name': 'Protein Salmon Bowl', 'cals': '520 kcal', 'prot': '38g protein', 'time': '20 min'},
      {'name': 'Greek Salad with Feta & Quinoa', 'cals': '380 kcal', 'prot': '18g protein', 'time': '15 min'},
      {'name': 'Wild Berry & Seed Oatmeal', 'cals': '410 kcal', 'prot': '22g protein', 'time': '10 min'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Recipes'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Recommended Recipes', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...recipes.map((r) => Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(r['name']!, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 6),
                  Text('${r["cals"]} • ${r["prot"]} • Time: ${r["time"]}', style: const TextStyle(color: AppTheme.primaryColor, fontSize: 12)),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
