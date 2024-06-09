import 'package:flutter/material.dart';
import 'package:recipe_app/src/ui/utils/helper_util.dart';
import 'package:recipe_app/src/ui/widgets/helper_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 24, bottom: 12),
              child: const Text('New', style: TextTypography.mH2),
            ),
            userActivity(
              name: 'Dypen',
              activity: 'now following you',
              time: '1h',
              urlProfile:
                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80',
              labelButton: 'Follow',
            ),
            Container(
              margin: const EdgeInsets.only(top: 24, bottom: 12),
              child: const Text('Today', style: TextTypography.mH2),
            ),
            postActivity(
              user1: 'Saiful bahri',
              user2: 'Aji',
              activity: 'liked your recipe',
              time: '20 min',
              urlProfile1:
                  'https://images.unsplash.com/photo-1520341280432-4749d4d7bcf9',
              urlProfile2:
                  'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f',
              urlPostImg:
                  'https://images.unsplash.com/photo-1707269561481-a4a0370a980a?q=80&w=1952&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
            userActivity(
              name: 'Amanda',
              activity: 'now following you',
              time: '1h',
              urlProfile:
                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80',
              labelButton: 'Followed',
              disable: true,
            ),
            postActivity(
              user1: 'Yuli',
              user2: 'Yading',
              activity: 'liked your recipe',
              time: '20 min',
              urlProfile1:
                  'https://images.unsplash.com/photo-1520341280432-4749d4d7bcf9',
              urlProfile2:
                  'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f',
              urlPostImg:
                  'https://images.unsplash.com/photo-1645696301019-35adcc18fc21?q=80&w=1929&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
            Container(
              margin: const EdgeInsets.only(top: 24, bottom: 12),
              child: const Text('Yesterday', style: TextTypography.mH2),
            ),
            userActivity(
              name: 'Saiful Bahri',
              activity: 'now following you',
              time: '1h',
              urlProfile:
                  'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c',
              labelButton: 'Follow',
            ),
            userActivity(
              name: 'Arif rahman',
              activity: 'now following you',
              time: '1h',
              urlProfile:
                  'https://images.unsplash.com/photo-1520341280432-4749d4d7bcf9',
              labelButton: 'Followed',
              disable: true,
            ),
          ],
        ),
      ),
    );
  }
}
