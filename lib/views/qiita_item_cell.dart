import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiita_reader_sample/models/qiita_item.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

class QiitaItemCell extends StatelessWidget {
  const QiitaItemCell({Key? key, required this.qiitaItem}) : super(key: key);

  final QiitaItem qiitaItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 40,
        height: 40,
        child: CachedNetworkImage(
          imageUrl: qiitaItem.user.profile_image_url,
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
            color: Colors.red,
            size: 40,
          ),
          placeholder: (
            BuildContext context,
            String url,
          ) {
            return Shimmer.fromColors(
              baseColor: Colors.grey.shade200,
              highlightColor: Colors.white,
              child: Container(
                color: Colors.white,
              ),
            );
          },
        ),
      ),
      title: Text(qiitaItem.title),
      subtitle: Text(
        qiitaItem.body,
        maxLines: 3,
      ),
      onTap: () async {
        await launch(
          qiitaItem.url,
          forceSafariVC: true,
          forceWebView: true,
        );
      },
    );
  }
}
