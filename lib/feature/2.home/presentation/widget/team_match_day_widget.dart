import 'package:footballclick/core/constants/build_context_extension.dart';

import '../../../../core/constants/index.dart';

class TeamMatchDayWidget extends StatelessWidget {
  const TeamMatchDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('보루시아 vs', style: TextStyle(fontSize: 13),),
                  Text('\t\tFC CAll', style: TextStyle(fontWeight: FontWeight.w700),),
                ],
              ),
              Spacer(),
              VerticalDivider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('20:00 ~ 22:00', style: TextStyle(fontSize: 13),),
                  Text('평촌자유공원', style: TextStyle(fontSize: 12, color: context.theme.colorScheme.grey400),),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}