import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../data/dummy_news.dart';

class NewsPage extends StatelessWidget {
  final List<DummyNews> newsList;

  const NewsPage(this.newsList, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (context.screenSize.width <= 600) {
          return _NewsThinPage(newsList, key: key);
        } else if (context.screenSize.width <= 800) {
          return _NewsWidePage(newsList, key: key, crossAxisCount: 2);
        } else if (context.screenSize.width <= 1000) {
          return _NewsWidePage(newsList, key: key, crossAxisCount: 3);
        }

        return _NewsWidePage(newsList, key: key, crossAxisCount: 4);
      },
    );
  }
}

class _NewsThinPage extends StatelessWidget {
  final List<DummyNews> newsList;

  const _NewsThinPage(this.newsList, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemExtent: 80,
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          // First item.
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(top: 8),
              child: _NewsThinPageItem(newsList[index]),
            );
          }

          // Last item.
          if (index == newsList.length - 1) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: _NewsThinPageItem(newsList[index]),
            );
          }

          // The rest.
          return _NewsThinPageItem(newsList[index]);
        },
      ),
    );
  }
}

class _NewsThinPageItem extends StatelessWidget {
  final DummyNews news;

  const _NewsThinPageItem(this.news);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      minVerticalPadding: 8,
      onTap: () {},
      title: Text(news.category.toUpperCase()),
      subtitle: Text(
        news.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Image.asset(
        news.imageUrl,
        fit: BoxFit.cover,
        width: 80,
      ),
    );
  }
}

class _NewsWidePage extends StatelessWidget {
  final List<DummyNews> newsList;
  final int crossAxisCount;

  const _NewsWidePage(
    this.newsList, {
    super.key,
    required this.crossAxisCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        itemCount: newsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          mainAxisExtent: 280,
        ),
        itemBuilder: (context, index) {
          return _NewsWidePageItem(newsList[index]);
        },
      ),
    );
  }
}

class _NewsWidePageItem extends StatelessWidget {
  final DummyNews news;

  const _NewsWidePageItem(this.news);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 140,
              width: double.maxFinite,
              child: Image.asset(news.imageUrl, fit: BoxFit.cover),
            ),
            const SizedBox(height: 8),
            Text(
              news.category.toUpperCase(),
              style: context.textTheme.subtitle1,
            ),
            Text(
              news.title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
