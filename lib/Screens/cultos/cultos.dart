import 'package:flutter/material.dart';
import '../../Model/Video.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

import 'cultos_controller.dart';

class Inicio extends StatefulWidget {

  String pesquisa;
  Inicio (this.pesquisa);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  _listarVideos(String pesquisa){
    Api api = Api();
    return api.pesquisar( pesquisa );
  }

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<Video>>(
        future: _listarVideos( widget.pesquisa ),
        builder: (context, snapshot){
          switch( snapshot.connectionState ){
            case ConnectionState.none :
            case ConnectionState.waiting :
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
            case ConnectionState.active :
            case ConnectionState.done :
              if( snapshot.hasData ){
                return ListView.separated(
                    itemBuilder: (context, index){

                      List<Video> videos = snapshot.data!;
                      Video video = videos[index];

                      return GestureDetector(
                        onTap: (){
                          FlutterYoutube.playYoutubeVideoById(
                              apiKey: CHAVE_YOUTUBE_API, videoId: video.id, autoPlay: true, fullScreen: true  );
                        },

                        child: Column(
                          children:[
                            Container(
                              height: 200, //tamanho do container da foto
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover, // faz a foto ocupar to.do o container
                                      image: NetworkImage(video.imagem)
                                  )
                              ),
                            ),

                            ListTile(
                              title: Text( video.titulo ),
                              subtitle: Padding( padding: EdgeInsets.only(top: 4), child: Text( video.canal ),),
                              contentPadding: EdgeInsets.only(bottom: 8),
                            )
                          ],
                        ),


                      );
                    },
                    separatorBuilder: (context,index) => Divider(
                      height: 2,
                      color: Colors.grey,
                    ),
                    itemCount: snapshot.data?.length ?? 0
                );
              }else{
                return Center(
                  child: Text("nenhum dado a ser exibido"),
                );

              }
              break;

          }
        }

    );
  }
}