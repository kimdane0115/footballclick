import '../../../../core/constants/index.dart';

class TeamMatchDayWidget extends StatelessWidget {
  const TeamMatchDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('2024.05.18 (토)'),
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('보루시아'),
                  Text('FC CAll'),
                ],
              ),
              Spacer(),
              VerticalDivider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('20:00 ~ 22:00'),
                  Text('평촌자유공원'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}