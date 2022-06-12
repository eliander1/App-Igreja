

class Video {
  String id;
  String titulo;
  String imagem;
  String canal;

  Video(this.id, this.titulo, this.imagem, this.canal);

factory Video.fromJson(Map<String, dynamic> json){
  return Video(json["id"]["videoId"], json["snippet"]["title"], json["snippet"]["thumbnails"]["high"]["url"],
  json["snippet"]["channelTitle"]);
  }
}