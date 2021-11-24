import 'package:flutter/material.dart';
import 'package:flutter_qiita_reader_sample/models/qiita_item.dart';
import 'package:flutter_qiita_reader_sample/repositories/qiita_items_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final qiitaItemListProvider = StateProvider((ref) => <QiitaItem>[]);
final isLoadingProvider = StateProvider((ref) => false);

class MyHomeViewModel {
  MyHomeViewModel(this.ref) {
    scrollController.addListener(scrollListener);
  }

  final WidgetRef ref;

  int page = 1;

  final ScrollController scrollController = ScrollController();

  void scrollListener() async {
    double positionRate =
        scrollController.offset / scrollController.position.maxScrollExtent;
    const threshold = 0.99;
    if (positionRate > threshold) {
      if (ref.read(isLoadingProvider.state).state) {
        return;
      }
      page++;
      fetch();
    }
  }

  void reload() {
    page = 1;
    ref.read(qiitaItemListProvider.state).state = [];
    fetch();
  }

  fetch() async {
    ref.read(isLoadingProvider.state).state = true;

    final response = await QiitaItemsRepository.instance.qiitaItems(page);

    ref.read(qiitaItemListProvider.state).state += response;
    ref.read(isLoadingProvider.state).state = false;
  }
}
