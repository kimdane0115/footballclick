import '../../../../core/constants/index.dart';

class TeamMatchDayWidget extends StatelessWidget {
  const TeamMatchDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Borussia'),
              Text('FC Call'),
            ],
          ),
          // Spacer(),
          // VerticalDivider(),
          // Column(
          //   // crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Text('20:00'),
          //     Text('평촌 자유공원'),
          //   ],
          // ),
        ],
      ),
    );
  }
}