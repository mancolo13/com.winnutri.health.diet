import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final recipes = [
      {'name': 'Протеиновый боул с лососем', 'cals': '520 ккал', 'prot': '38г белка', 'time': '20 мин'},
      {'name': 'Греческий салат с фетой и киноа', 'cals': '380 ккал', 'prot': '18г белка', 'time': '15 мин'},
      {'name': 'Овсянка с лесными ягодами и семенами', 'cals': '410 ккал', 'prot': '22г белка', 'time': '10 мин'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('WinNutri • Recipes'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Рекомендованные блюда', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
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
                  Text('${r["cals"]} • ${r["prot"]} • Время: ${r["time"]}', style: const TextStyle(color: AppTheme.primaryColor, fontSize: 12)),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
