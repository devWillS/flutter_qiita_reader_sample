import 'package:flutter/material.dart';
import 'package:flutter_qiita_reader_sample/view_models/my_home_view_model.dart';
import 'package:flutter_qiita_reader_sample/views/qiita_item_cell.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  late MyHomeViewModel viewModel;

  @override
  void initState() {
    viewModel = MyHomeViewModel(ref);
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      viewModel.reload();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final qiitaItemList = ref.watch(qiitaItemListProvider.state).state;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Qiita Reader',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () async {
              viewModel.reload();
            },
            child: ListView.separated(
              controller: viewModel.scrollController,
              itemCount: qiitaItemList.length,
              itemBuilder: (context, index) {
                final qiitaItem = qiitaItemList[index];
                return QiitaItemCell(qiitaItem: qiitaItem);
              },
              separatorBuilder: (context, index) => const Divider(
                color: Colors.black12,
              ),
            ),
          ),
          Visibility(
            visible: ref.watch(isLoadingProvider.state).state,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}
