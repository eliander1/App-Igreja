import 'package:url_launcher/url_launcher.dart';

const connectBairro = ['Alvorada', 'Jorge Teixeira', 'Ponta negra', 'Iranduba', 'Glória',
  'Flores', 'Parque das laranjeiras', 'Zumbi', 'Centro', 'Parque das palmeiras',
  'Japiim', 'Mauazinho', 'Aleixo', 'Vieralves', 'Adrianopolis'];


 Future<void> launchLink(String url) async {
  if (await canLaunch(url)) {
   await launch(url, forceWebView: false, forceSafariVC: false);
  } else {
   print('Não pode executar o link $url');
  }
 }

