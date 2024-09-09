import '../../../../index.dart';
import '../../../1.sign/presentation/provider/supabase_auth_provider.async_notifier.dart';

class MyInfoPage extends ConsumerStatefulWidget {
  const MyInfoPage({super.key});

  @override
  ConsumerState<MyInfoPage> createState() => _MyInfoPageState();
}

class _MyInfoPageState extends ConsumerState<MyInfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: body(),
          ),
        ),
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // googlelogin();
              ref.watch(supaBaseAuthAsyncNotifierProvider.notifier).signOut();
            },
            child: const Text('LogOut'),
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 500,
                color: Colors.white,
              ),
              // const SizedBox(height: 150,),
              const Positioned(
                top: 270, bottom: 20, left: 0, right: 0,
                child: Text('2024 Year'),
              ),
              Positioned(
                top: 300, bottom: 90, left: 0, right: 0,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment.center,
                        child: const Text('11',),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment.center,
                        child: const Text('Goal'),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment.center,
                        child: const Text('Assist'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget home() {
    return const Text('home screen3');
  }
}