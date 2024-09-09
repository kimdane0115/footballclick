import 'package:footballclick/core/constants/build_context_extension.dart';

import '../../../../index.dart';

class TeamRankingWidget extends StatelessWidget {
  const TeamRankingWidget(
      {super.key,
      required this.name,
      required this.data1,
      required this.data2,
      required this.data3,
      required this.data4});
  final String name;
  final String data1;
  final String data2;
  final String data3;
  final String data4;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(color: context.theme.colorScheme.grey100),
        borderRadius: BorderRadius.circular(15),
      ),
      // alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(height: 5,),
          _top(),
          const SizedBox(height: 2,),
          Text(name, style: const TextStyle(fontSize: 11),),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: context.theme.colorScheme.grey100),),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              color: context.theme.colorScheme.grey100,
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
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: NetworkImage('https://picsum.photos/id/133/80/80')),
        // color: Colors.green,
        // borderRadius: BorderRadius.circular(100),
      ),
    );
  }

  Widget _bottom() {
    return SizedBox(
      height: 50,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(data1),
              Text(data2, style: TextStyle(fontSize: 10),),
            ],
          ),
          const Spacer(flex: 2),
          const VerticalDivider(
            // color: Colors.black,
            // thickness: 1,
            // width: 20, // Divider의 너비 (공간을 얼마나 차지할지)
          ),
          const Spacer(flex: 1),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(data3),
              Text(data4, style: TextStyle(fontSize: 10),),
            ],
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
