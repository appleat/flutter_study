class Post {
  final String name;
  final String director;
  final String url;

  const Post({this.director, this.name, this.url});
}

final List<Post> posts = [
  Post(
      name: '千与千寻',
      director: '宫崎骏',
      url: 'http://img5.mtime.cn/mg/2019/05/07/094557.27137848_270X405X4.jpg'),
  Post(
      name: '狮子王',
      director: '乔恩·费儒',
      url:
          'http://img3.doubanio.com/view/photo/s_ratio_poster/public/p2559742751.webp'),
  Post(
      name: '哪吒',
      director: '饺子',
      url:
          'http://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561876551.webp'),
  Post(
      name: '哥斯拉',
      director: '迈克尔·道赫蒂',
      url:
          'http://img3.doubanio.com/view/photo/s_ratio_poster/public/p2554370800.webp'),
  Post(
      name: '绿皮书',
      director: '彼得·法雷里',
      url:
          'http://img3.doubanio.com/view/photo/s_ratio_poster/public/p2549177902.jpg'),
  Post(
      name: '流浪地球',
      director: '郭帆',
      url:
          'http://img3.doubanio.com/view/photo/s_ratio_poster/public/p2545472803.jpg'),
  Post(
      name: '阿丽塔：战斗天使',
      director: '罗伯特·罗德里格兹',
      url: 'http://img5.mtime.cn/mg/2019/01/09/171109.73085148_270X405X4.jpg'),
];
