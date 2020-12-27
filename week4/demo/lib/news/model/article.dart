class Article {
  final String author;
  final String title;
  final String content;
  final DateTime date;
  final String imageUrl;

  Article({
    this.author,
    this.title,
    this.content,
    this.date,
    this.imageUrl,
  });
}

final news = Article(
  title: "Lorem Ipsum ",
  content: content,
  author: "John Mayer",
  imageUrl:
      "https://images.unsplash.com/photo-1554260570-9140fd3b7614?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
  date: DateTime.now(),
);

const content =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
