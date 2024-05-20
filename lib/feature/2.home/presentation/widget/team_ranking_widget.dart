import 'package:footballclick/core/constants/build_context_extension.dart';

import '../../../../core/constants/index.dart';

class TeamRankingWidget extends StatelessWidget {
  const TeamRankingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      // alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(height: 5,),
          _top(),
          const Text('김동욱'),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: context.theme.colorScheme.grey100),),
            ),
            child: _bottom(),
          ),
        ],
      )
    );
  }

  Widget _top() {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }

  Widget _bottom() {
    return const SizedBox(
      height: 50,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(flex: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('37'),
              Text('AGE'),
            ],
          ),
          Spacer(flex: 1),
          VerticalDivider(
            // color: Colors.black,
            // thickness: 1,
            // width: 20, // Divider의 너비 (공간을 얼마나 차지할지)
          ),
          // Spacer(flex: 1),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('11'),
              Text('GAME'),
            ],
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
