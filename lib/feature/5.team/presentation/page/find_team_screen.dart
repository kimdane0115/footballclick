// import 'package:footballclick/feature/1.sign/presentation/provider/sign_up_screen_provider_notifier.dart';
import 'package:footballclick/feature/1.sign/presentation/provider/sign_up_screen_provider_notifier.dart';
import 'package:footballclick/feature/5.team/presentation/provider/team_async_notifier.dart';
// import 'package:footballclick/feature/5.team/presentation/provider/team_register_notifier.dart';

import '../../../../core/constants/index.dart';

class FindTeamScreen extends ConsumerStatefulWidget {
  const FindTeamScreen({super.key});

  @override
  ConsumerState<FindTeamScreen> createState() => _FindTeamScreenState();
}

class _FindTeamScreenState extends ConsumerState<FindTeamScreen> {
  TextEditingController controller = TextEditingController();
  int teamId = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop(controller.text);
            // ref.invalidate(teamAsyncNotifierProvider);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              print('>>>>>> teamId : $teamId');
              ref
                  .read(signUpScreenProviderNotifierProvider.notifier)
                  .setTeamName(controller.text);
              context.pop();
            },
            child: const Text('다음'),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: body(),
        ),
      ),
    );
  }

  Widget body() {

    // final res = ref.watch(teamAsyncNotifierProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('팀 이름'),
        TextFormField(
          controller: controller,
          onChanged: (value) {
            // ref.read(teamFindNotifierProvider.notifier).setFindTeamName(value);
          },
        ),
        const SizedBox(height: 20,),
        ElevatedButton(
          onPressed: () async {
            // String findTeamName = ref.read(teamFindNotifierProvider);
            ref
                .read(teamAsyncNotifierProvider.notifier)
                .findTeam(controller.text);
          },
          // child: ref.watch(teamRegisterNotifierProvider
          //             .select((value) => value.teamName)) !=
          //         null
          //     ? const Text('선택')
          //     : const Text('검색'),
          // child:
          //     controller.text.isNotEmpty
          //         ? const Text('선택')
          //         : const Text('검색'),
          child: const Text('검색'),
        ),
        Expanded(
          child: Consumer(
            builder:(context, ref, child) {
              return ref.watch(teamAsyncNotifierProvider).when(
                data: (data) {
                  if (data == null) return const SizedBox.shrink();
                  if (data.isEmpty) return const Text('검색 결과가 존재하지 않습니다.');

                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          teamId = data[index].id!;
                          controller.text = data[index].teamName!;
                          setState(() {
                            
                          });
                        },
                        child: Text(
                          data[index].teamName ?? '',
                          style: const TextStyle(fontSize: 24),
                        ),
                      );
                    },
                  );
                },
                error: (error, stackTrace) {
                  return const SizedBox.shrink();
                },
                loading: () {
                  return const SizedBox.shrink();
                },
              );
            },
          ),
        ),
      ],
    );

    // return res.when(
    //   data: (data) {
    //     return Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         const Text('팀 이름'),
    //         TextFormField(
    //           controller: controller,
    //           onChanged: (value) {
    //             // ref.read(teamFindNotifierProvider.notifier).setFindTeamName(value);
    //           },
    //         ),
    //         ElevatedButton(
    //             onPressed: () async {
    //               // String findTeamName = ref.read(teamFindNotifierProvider);
    //               ref.read(teamAsyncNotifierProvider.notifier).findTeam(controller.text);
    //             },
    //             child: ref.watch(teamRegisterNotifierProvider.select((value) => value.teamName)) != null ? const Text('선택') : const Text('검색'),
    //           ),
    //         if (data!.isEmpty) ... [
    //           const Text('검색 결과가 없습니다!'),
    //         ] else ... [
    //           Expanded(
    //             child: ListView.builder(
    //               itemCount: data?.length,
    //               itemBuilder: (context, index) {
    //                 return Text(data?[index].teamName ?? '', style: const TextStyle(fontSize: 24),);
    //               },
    //             ),
    //           ),
    //         ]
    //       ],
    //     );
    //   },
    //   error: (error, stackTrace) {
    //     return const SizedBox.shrink();
    //   },
    //   loading: () {
    //     return const SizedBox.shrink();
    //   },
    // );
  }
}