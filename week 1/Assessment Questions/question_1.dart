/*
abstract class ContentItem {
  Widget build(BuildContext context);
}

class TextItem extends ContentItem {
  final String data;
  TextItem(this.data);

  @override
  Widget build(BuildContext context) {
    return Text(data);
  }
}

class ImageItem extends ContentItem {
  final String url;
  ImageItem(this.url);

  @override
  Widget build(BuildContext context) {
    return Image.network(url);
  }
}

class VideoItem extends ContentItem {
  final String videoUrl;
  VideoItem(this.videoUrl);

  @override
  Widget build(BuildContext context) {
  
    return Text("Playing video from: $videoUrl");
  }
}

class ContentDisplay extends StatelessWidget {
  final List<ContentItem> items;
  ContentDisplay(this.items);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) => item.build(context)).toList(),
    );
  }
}
*/