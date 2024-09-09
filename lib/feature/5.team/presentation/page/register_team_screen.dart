import 'package:footballclick/feature/5.team/presentation/provider/team_async_notifier.dart';
import 'package:footballclick/feature/5.team/presentation/provider/team_register_notifier.dart';

import '../../../../core/constants/enums.dart';
import '../../../../index.dart';

class RegisterTeamScreen extends ConsumerStatefulWidget {
  const RegisterTeamScreen({super.key});

  @override
  ConsumerState<RegisterTeamScreen> createState() => _RegisterTeamScreenState();
}

class _RegisterTeamScreenState extends ConsumerState<RegisterTeamScreen> {
  int? _valueTeamRegion = 0;
  int? _valueAgeMin = 0;
  int? _valueAgeMax = 0;

  @override
  Widget build(BuildContext context) {

    ref.listen(
      teamAsyncNotifierProvider,
      (prev, next) {
        if (next.hasError) {
          print('>>>>>>>>>>>>>>>>>>>> error!!! ${next.hasError}');
        }
        next.whenOrNull(
          data: (data) async {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: Column(
                    children: [
                      // Text(data ?? ''),
                      // CloseButton(
                      //   onPressed: () {
                      //     context.pop();
                      //     if (data == '등록 완료') context.pop();
                      //   },
                      // ),
                    ],
                  ),
                );
              },
            );
          },
        );
      }
    );

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: body(),
        ),
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('팀 이름'),
          TextFormField(
            onChanged: (value) {
              ref.read(teamRegisterNotifierProvider.notifier).setTeamName(value);
            },
          ),
          const Text('지역'),
          // TextFormField(
          //   onChanged: (value) {
          //     ref.read(teamRegisterNotifierProvider.notifier).setRegion(value);
          //   },
          // ),
          Wrap(
            spacing: 5.0,
            children: List<Widget>.generate(
              TeamRegion.values.length,
              (int index) {
                return ChoiceChip(
                  // label: Text('Item $index'),
                  label: Text(TeamRegion.values[index].name),
                  selected: _valueTeamRegion == index,
                  onSelected: (bool selected) {
                    setState(() {
                      _valueTeamRegion = selected ? index : null;
                      ref
                          .read(teamRegisterNotifierProvider.notifier)
                          .setRegion(TeamRegion.values[_valueTeamRegion!].name);
                    });
                  },
                );
              },
            ).toList(),
          ),
          const SizedBox(height: 20,),
          const Text('연령대 (최소)'),
          Wrap(
            spacing: 5.0,
            children: List<Widget>.generate(
              6,
              (int index) {
                return ChoiceChip(
                  // label: Text('Item $index'),
                  label: Text(MemberAge.values[index].name),
                  selected: _valueAgeMin == index,
                  onSelected: (bool selected) {
                    setState(() {
                      _valueAgeMin = selected ? index : null;
                    });
                  },
                );
              },
            ).toList(),
          ),
          const SizedBox(height: 20,),
          const Text('연령대 (최대)'),
          Wrap(
            spacing: 5.0,
            children: List<Widget>.generate(
              6,
              (int index) {
                return ChoiceChip(
                  // label: Text('Item $index'),
                  label: Text(MemberAgeMax.values[index].name),
                  selected: _valueAgeMax == index,
                  onSelected: (bool selected) {
                    setState(() {
                      _valueAgeMax = selected ? index : null;
                    });
                  },
                );
              },
            ).toList(),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () async {
              String? teamName = ref.read(teamRegisterNotifierProvider).teamName;
              String region = ref.read(teamRegisterNotifierProvider).region;
              final request = {
                'teamName': teamName,
                'region': region,
              };
              ref.read(teamAsyncNotifierProvider.notifier).addTeam(request).then((value) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Column(
                        children: [
                          const Text('등록 완료'),
                          CloseButton(
                            onPressed: () {
                              context.pop();
                              // if (data == '등록 완료') context.pop();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              });
            },
            child: const Text('등록 완료'),
          ),
        ],
      ),
    );
  }
}