import 'package:emunah_app/TelaCard.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';
import 'dart:async';

class TelaReceitas extends StatefulWidget {
  @override
  _TelaReceitasState createState() => _TelaReceitasState();
}

class _TelaReceitasState extends State<TelaReceitas> {
  Future<void> _launched;

  Future<void> _launchInBrowser(String url) async {
    if (await UrlLauncherPlatform.instance.canLaunch(url)) {
      await UrlLauncherPlatform.instance.launch(
        url,
        useSafariVC: false,
        useWebView: true,
        //forceWebView: true,
        enableJavaScript: true,
        enableDomStorage: false,
        universalLinksOnly: false,
        headers: <String, String>{},
      );
    } else {
      throw 'Não foi possível lançar $url';
    }
  }

  _launchURL(String url) async {
    if (await launch(url)) {
    } else {
      throw 'Não foi possível lançar $url';
    }
  }
  /*Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Erro: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }*/

  @override
  Widget build(BuildContext context) {
    const String url = 'https://www.youtube.com/watch?v=bXPbLJidFk8&list=PLf_CmttUq13Cts0nM8F1i1VQwDk6WBqiJ';
    const String url2 = 'https://www.youtube.com/watch?v=TncrAu_KIPM&list=PLf_CmttUq13BOVlE8ycxsOvVEz9krMgHr';
    const String url3 = 'https://www.youtube.com/watch?v=sVVvOKNYAVA&list=PLf_CmttUq13D1xCnx0DziLCi5T_f3lSDW';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Nossas Receitas'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Container(
                    width: 450,
                    height: 150,
                    child: Card(
                      color: Colors.red,
                      shadowColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 20,
                      child: GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(32, 50, 32, 30),
                          child: Text('SOBREMESAS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        onTap: () => setState(() {
                          _launched = _launchInBrowser(url);
                        }),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Container(
                    width: 450,
                    height: 150,
                    child: Card(
                      color: Colors.red,
                      shadowColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 20,
                      child: GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(32, 50, 32, 30),
                          child: Text('SALGADOS',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        onTap: () => setState(() {
                          _launched = _launchInBrowser(url2);
                        }),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 450,
                  height: 150,
                  child: Card(
                    color: Colors.red,
                    shadowColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 20,
                    child: GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(32, 50, 32, 30),
                        child: Text('SUCOS DETOX',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      onTap: () => setState(() {
                        _launched = _launchInBrowser(url3);
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
