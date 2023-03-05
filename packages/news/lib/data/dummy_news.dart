import 'package:core/core.dart';

const dummyNewsList = [
  DummyNews(
    author: 'Pellentesque Varius',
    category: 'General',
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis sapien id nibh dictum posuere eget dignissim est. Donec vel fermentum ligula. Suspendisse potenti. Nullam ut ex nec leo aliquam faucibus quis nec ipsum. Pellentesque varius nunc id augue ullamcorper, et iaculis dolor sollicitudin. Praesent orci lacus, dapibus non massa ac, ornare elementum massa. Sed in convallis arcu. Sed pellentesque condimentum volutpat. Sed pretium blandit mollis. Donec lorem magna, tristique vel nisi nec, commodo fringilla ex. Vivamus porttitor ante odio, quis sollicitudin ipsum vehicula id. Donec condimentum metus luctus consectetur eleifend.",
    imageUrl: appIconUrl,
    title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
  ),
  DummyNews(
    author: 'Donec Quis Sapien',
    category: 'General',
    description:
        "Sakura season is a time of year when cherry blossoms, or sakura, flowers bloom throughout Japan. This annual event is celebrated with outdoor picnics, hanami parties, and other events where people come together to appreciate the beauty of the cherry blossom trees. The sakura season typically lasts for a few weeks, and the exact timing of the blooms varies depending on the location within Japan. In Tokyo, for example, the cherry bloms typically appear in late March or early April.\n\nDuring sakura season, the cherry blossom trees are in full bloom, and their delicate pink and white flowers can be seen throughout the country. The sight of the cherry blossom trees in full bloom is a breathtaking experience, and it's not uncommon for people to travel from all over Japan and beyond to see them.\n\nSakura season is an important cultural tradition in Japan, and it's a time for people to come together and celebrate the beauty of nature. Whether you're visiting Japan during sakura season or just want to learn more about this special time of year, it's definitely an experience you won't want to miss.",
    imageUrl: 'assets/images/fuji-sakura-japan.jpg',
    title:
        'Sakura Season Takes Japan by Storm: Beautiful Cherry Blossoms Bloom Across the Country',
  ),
  DummyNews(
    author: 'Pellentesque Varius',
    category: 'General',
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis sapien id nibh dictum posuere eget dignissim est. Donec vel fermentum ligula. Suspendisse potenti. Nullam ut ex nec leo aliquam faucibus quis nec ipsum. Pellentesque varius nunc id augue ullamcorper, et iaculis dolor sollicitudin. Praesent orci lacus, dapibus non massa ac, ornare elementum massa. Sed in convallis arcu. Sed pellentesque condimentum volutpat. Sed pretium blandit mollis. Donec lorem magna, tristique vel nisi nec, commodo fringilla ex. Vivamus porttitor ante odio, quis sollicitudin ipsum vehicula id. Donec condimentum metus luctus consectetur eleifend.",
    imageUrl: appIconUrl,
    title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
  ),
  DummyNews(
    author: 'Donec Quis Sapien',
    category: 'General',
    description:
        "Sakura season is a time of year when cherry blossoms, or sakura, flowers bloom throughout Japan. This annual event is celebrated with outdoor picnics, hanami parties, and other events where people come together to appreciate the beauty of the cherry blossom trees. The sakura season typically lasts for a few weeks, and the exact timing of the blooms varies depending on the location within Japan. In Tokyo, for example, the cherry bloms typically appear in late March or early April.\n\nDuring sakura season, the cherry blossom trees are in full bloom, and their delicate pink and white flowers can be seen throughout the country. The sight of the cherry blossom trees in full bloom is a breathtaking experience, and it's not uncommon for people to travel from all over Japan and beyond to see them.\n\nSakura season is an important cultural tradition in Japan, and it's a time for people to come together and celebrate the beauty of nature. Whether you're visiting Japan during sakura season or just want to learn more about this special time of year, it's definitely an experience you won't want to miss.",
    imageUrl: 'assets/images/fuji-sakura-japan.jpg',
    title:
        'Sakura Season Takes Japan by Storm: Beautiful Cherry Blossoms Bloom Across the Country',
  ),
];

class DummyNews {
  final String author;
  final String category;
  final String description;
  final String imageUrl;
  final String title;

  const DummyNews({
    required this.author,
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.title,
  });
}
