import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class SecaoHomepage {
  Widget secao3Homepage(BuildContext context) {
    Widget habilidadesContainer(
      String imgAsset,
      String nomeHabilidade, {
      double? sizeFont,
      double? heightImg,
      double? widthImg,
    }) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: Colors.blueAccent, style: BorderStyle.solid, width: 3)),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Wrap(
            alignment: WrapAlignment.center,
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              Image.asset(
                imgAsset,
                height: heightImg ?? 100,
                width: widthImg ?? 120,
              ),
              AutoSizeText(
                nomeHabilidade,
                minFontSize: 6,
                maxLines: 2,
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: sizeFont ?? 20,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (ResponsiveBreakpoints.of(context).equals(MOBILE)) ...[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                habilidadesContainer("assets/html.png", "HTML"),
                habilidadesContainer("assets/css-3.png", "CSS"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                habilidadesContainer(
                    "assets/javascript-logo-javascript-icon-transparent-free-png.png",
                    "JavaScript"),
                habilidadesContainer("assets/Flutter_logo.svg.png", "Flutter"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                habilidadesContainer("assets/java.png", "Java"),
                habilidadesContainer(
                    "assets/jsp-file-format-symbol.png", "Java Server Pages",
                    sizeFont: 17),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                habilidadesContainer("assets/mysql_logo.png", "Mysql"),
                habilidadesContainer("assets/nosql1.png", "NoSql"),
              ],
            ),
          ),
        ] else if (ResponsiveBreakpoints.of(context).equals(TABLET)) ...[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                habilidadesContainer("assets/html.png", "HTML"),
                habilidadesContainer("assets/css-3.png", "CSS"),
                habilidadesContainer(
                    "assets/javascript-logo-javascript-icon-transparent-free-png.png",
                    "JavaScript"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                habilidadesContainer("assets/Flutter_logo.svg.png", "Flutter"),
                habilidadesContainer("assets/java.png", "Java"),
                habilidadesContainer(
                    "assets/jsp-file-format-symbol.png", "Java Server Pages",
                    sizeFont: 15),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                habilidadesContainer("assets/mysql_logo.png", "Mysql"),
                habilidadesContainer("assets/nosql1.png", "NoSql"),
              ],
            ),
          ),
        ] else ...[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                habilidadesContainer("assets/html.png", "HTML"),
                habilidadesContainer("assets/css-3.png", "CSS"),
                habilidadesContainer(
                    "assets/javascript-logo-javascript-icon-transparent-free-png.png",
                    "JavaScript"),
                habilidadesContainer("assets/Flutter_logo.svg.png", "Flutter"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                habilidadesContainer("assets/java.png", "Java"),
                habilidadesContainer(
                    "assets/jsp-file-format-symbol.png", "Java Server Pages"),
                habilidadesContainer("assets/mysql_logo.png", "Mysql"),
                habilidadesContainer("assets/nosql1.png", "NoSql"),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Future<void> abrirSiteUrl(String urlSite) async {
    final Uri url = Uri.parse(urlSite);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Widget secaoProjeto(BuildContext context) {
    Widget projetoContainer(
      String imgAsset,
      String nomeHabilidade, {
      required String descricao,
      double? sizeFont,
      double? sizeFontDescricao,
      double? heightImg,
      double? widthImg,
    }) {
      return Card(
        shadowColor: Colors.blueAccent,
        elevation: 9,
        borderOnForeground: true,
        color: const Color.fromARGB(255, 0, 5, 14),
        surfaceTintColor: const Color.fromARGB(255, 0, 5, 14),
        child: Container(
          width: ResponsiveBreakpoints.of(context).isMobile
              ? MediaQuery.of(context).size.width * 0.85
              : ResponsiveBreakpoints.of(context).isTablet
                  ? MediaQuery.of(context).size.width * 0.40
                  : MediaQuery.of(context).size.width * 0.22,
          height: 480,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  imgAsset,
                  height: heightImg ??
                      (ResponsiveBreakpoints.of(context).isMobile
                          ? 170
                          : ResponsiveBreakpoints.of(context).isTablet
                              ? 170
                              : 170),
                  width: widthImg ??
                      (ResponsiveBreakpoints.of(context).isMobile
                          ? MediaQuery.of(context).size.width * 0.75
                          : ResponsiveBreakpoints.of(context).isTablet
                              ? MediaQuery.of(context).size.width * 0.35
                              : MediaQuery.of(context).size.width * 0.25),
                ),
              ),
              Container(
                //  key: keySecao4,
                width: double.infinity,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.white,
                            width: 1.8,
                            style: BorderStyle.solid))),
                padding: const EdgeInsets.symmetric(horizontal: 30),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                child: AutoSizeText(
                  nomeHabilidade,
                  minFontSize: 6,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: sizeFont ?? 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                child: AutoSizeText(
                  descricao,
                  minFontSize: 6,
                  maxLines: 4,
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: sizeFontDescricao ?? 13,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      await abrirSiteUrl('https://github.com/tonilsonmanoel');
                    },
                    style: const ButtonStyle(
                        padding: const WidgetStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                        shape: WidgetStatePropertyAll(CircleBorder()),
                        shadowColor: WidgetStatePropertyAll(Colors.white),
                        overlayColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 0, 45, 128)),
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 255, 255, 255))),
                    child: Image.asset(
                      "assets/github.png",
                      height: heightImg ?? 30,
                      width: widthImg ?? 30,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await abrirSiteUrl(
                          'https://www.youtube.com/channel/UCNxrxHyNUkM3CJz69CAI9MA');
                    },
                    style: const ButtonStyle(
                        padding: const WidgetStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                        shape: WidgetStatePropertyAll(CircleBorder()),
                        shadowColor: WidgetStatePropertyAll(Colors.white),
                        overlayColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 0, 45, 128)),
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 255, 255, 255))),
                    child: Image.asset(
                      "assets/youtube.png",
                      height: heightImg ?? 30,
                      width: widthImg ?? 30,
                    ),
                  ),
                  if (ResponsiveBreakpoints.of(context).isMobile) ...[
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          await abrirSiteUrl('https://flutter.dev');
                        },
                        style: const ButtonStyle(
                            padding: const WidgetStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15)),
                            shadowColor: WidgetStatePropertyAll(Colors.white),
                            backgroundColor: WidgetStatePropertyAll(
                                Color.fromARGB(255, 255, 255, 255))),
                        child: AutoSizeText(
                          'Acessar Projeto',
                          minFontSize: 10,
                          style: GoogleFonts.roboto(
                              color: const Color.fromARGB(255, 0, 45, 128),
                              fontSize: 15,
                              fontWeight: FontWeight.w800),
                        )),
                  ]
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              if (!ResponsiveBreakpoints.of(context).isMobile) ...[
                ElevatedButton(
                    onPressed: () async {
                      await abrirSiteUrl('https://flutter.dev');
                    },
                    style: const ButtonStyle(
                        padding: const WidgetStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                        shadowColor: WidgetStatePropertyAll(Colors.white),
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 255, 255, 255))),
                    child: AutoSizeText(
                      'Acessar Projeto',
                      minFontSize: 10,
                      style: GoogleFonts.roboto(
                          color: const Color.fromARGB(255, 0, 45, 128),
                          fontSize: 15,
                          fontWeight: FontWeight.w800),
                    )),
              ]
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (ResponsiveBreakpoints.of(context).equals(MOBILE)) ...[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                projetoContainer("assets/projetoLocCarImg1.png", "LocCar",
                    sizeFont: 24,
                    sizeFontDescricao: 19,
                    descricao:
                        "Sistema para gerenciamento de contratos e locação de veiculos.\nTecnologias: HTML,CSS,Java,JSP e Mysql."),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                projetoContainer(
                    "assets/designmakerimg1.png", "DesignMaker App",
                    descricao:
                        "Aplicativo para criação de design com modo automatico e editor.\n Tecnologias: Flutter, Dart, Firebase e ApiRest"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                projetoContainer(
                    "assets/lojadesignmaker1.png", "Loja Virtual DesignMaker",
                    descricao:
                        "Loja Virtual Gerada pelo DesignMaker Com produtos intregados.Tecnologias: Flutter Web, Dart, Firebase e ApiRest"),
              ],
            ),
          ),
        ] else if (ResponsiveBreakpoints.of(context).equals(TABLET)) ...[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                projetoContainer("assets/projetoLocCarImg1.png", "LocCar",
                    descricao:
                        "Sistema para gerenciamento de contratos e locação de veiculos.\nTecnologias: HTML,CSS,Java,JSP e Mysql."),
                projetoContainer(
                    "assets/designmakerimg1.png", "DesignMaker App",
                    descricao:
                        "Aplicativo para criação de design com modo automatico e editor.\n Tecnologias: Flutter, Dart, Firebase e ApiRest"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                projetoContainer(
                    "assets/lojadesignmaker1.png", "Loja Virtual DesignMaker",
                    descricao:
                        "Loja Virtual Gerada pelo DesignMaker Com produtos intregados.Tecnologias: Flutter Web, Dart, Firebase e ApiRest"),
              ],
            ),
          ),
        ] else ...[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                projetoContainer("assets/projetoLocCarImg1.png", "LocCar",
                    descricao:
                        "Sistema para gerenciamento de contratos e locação de veiculos.\nTecnologias: HTML,CSS,Java,JSP e Mysql."),
                projetoContainer(
                    "assets/designmakerimg1.png", "DesignMaker App",
                    descricao:
                        "Aplicativo para criação de design com modo automatico e editor.\n Tecnologias: Flutter, Dart, Firebase e ApiRest"),
                projetoContainer(
                    "assets/lojadesignmaker1.png", "Loja Virtual DesignMaker",
                    descricao:
                        "Loja Virtual Gerada pelo DesignMaker Com produtos intregados.Tecnologias: Flutter Web, Dart, Firebase e ApiRest"),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget secaoRedesSociais(BuildContext context) {
    Widget redesSociasContainer(
      String imgAsset,
      String nomeHabilidade, {
      required String link,
      double? sizeFont,
      double? heightImg,
      double? widthImg,
    }) {
      return Card(
        shadowColor: Colors.blueAccent,
        elevation: 9,
        borderOnForeground: true,
        color: const Color.fromARGB(255, 0, 5, 14),
        surfaceTintColor: const Color.fromARGB(255, 0, 5, 14),
        child: SizedBox(
          width: ResponsiveBreakpoints.of(context).isMobile
              ? MediaQuery.of(context).size.width * 0.40
              : ResponsiveBreakpoints.of(context).isTablet
                  ? MediaQuery.of(context).size.width * 0.40
                  : MediaQuery.of(context).size.width * 0.30,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  imgAsset,
                  height: heightImg ??
                      (ResponsiveBreakpoints.of(context).isMobile
                          ? 80
                          : ResponsiveBreakpoints.of(context).isTablet
                              ? 80
                              : 80),
                  width: widthImg ??
                      (ResponsiveBreakpoints.of(context).isMobile
                          ? MediaQuery.of(context).size.width * 0.37
                          : ResponsiveBreakpoints.of(context).isTablet
                              ? MediaQuery.of(context).size.width * 0.50
                              : MediaQuery.of(context).size.width * 0.27),
                ),
              ),
              AutoSizeText(
                nomeHabilidade,
                minFontSize: 6,
                maxLines: 2,
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: sizeFont ?? 18,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    await abrirSiteUrl(link);
                  },
                  style: const ButtonStyle(
                      padding: const WidgetStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 8, vertical: 8)),
                      shadowColor: WidgetStatePropertyAll(Colors.white),
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 255, 255, 255))),
                  child: AutoSizeText(
                    'Acessar',
                    minFontSize: 10,
                    style: GoogleFonts.roboto(
                        color: const Color.fromARGB(255, 0, 45, 128),
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  )),
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              redesSociasContainer("assets/linkedin.png", "Linkedin",
                  link: "https://www.linkedin.com/in/tonilsonmanoel/"),
              redesSociasContainer("assets/github.png", "Github",
                  link: "https://github.com/tonilsonmanoel"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              redesSociasContainer("assets/youtube.png", "Youtube",
                  link:
                      "https://www.youtube.com/channel/UCNxrxHyNUkM3CJz69CAI9MA"),
            ],
          ),
        ] else ...[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                redesSociasContainer("assets/linkedin.png", "Linkedin",
                    link: "https://www.linkedin.com/in/tonilsonmanoel/"),
                redesSociasContainer("assets/github.png", "Github",
                    link: "https://github.com/tonilsonmanoel"),
                redesSociasContainer(
                  "assets/youtube.png",
                  "Youtube",
                  link:
                      "https://www.youtube.com/channel/UCNxrxHyNUkM3CJz69CAI9MA",
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget secaoContato(BuildContext context) {
    Widget contatoContainer(
      IconData icon,
      String contato,
      String contatoSubtexto, {
      double? iconSize,
      double? sizeFontTitulo,
      double? sizeFontSubtitulo,
      double? heightImg,
      double? widthImg,
    }) {
      return Card(
        shadowColor: Colors.blueAccent,
        elevation: 9,
        borderOnForeground: true,
        color: const Color.fromARGB(255, 0, 5, 14),
        surfaceTintColor: const Color.fromARGB(255, 0, 5, 14),
        child: SizedBox(
          width: ResponsiveBreakpoints.of(context).isMobile
              ? MediaQuery.of(context).size.width * 0.40
              : ResponsiveBreakpoints.of(context).isTablet
                  ? MediaQuery.of(context).size.width * 0.40
                  : MediaQuery.of(context).size.width * 0.30,
          height: 180,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: iconSize ?? 40,
                  )),
              AutoSizeText(
                contato,
                textAlign: TextAlign.center,
                minFontSize: 6,
                maxLines: 2,
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: sizeFontTitulo ?? 22,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: AutoSizeText(
                  contatoSubtexto,
                  minFontSize: 6,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: sizeFontSubtitulo ?? 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              contatoContainer(Icons.email, "Email", "tonilsonmanoel@gmail.com",
                  sizeFontSubtitulo: 17),
              contatoContainer(
                Icons.phone,
                "Telefone",
                "(61) 983753695",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              contatoContainer(
                  Icons.location_on, "Localização", "Brasília - DF"),
            ],
          ),
        ] else ...[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                contatoContainer(
                    Icons.email, "Email", "tonilsonmanoel@gmail.com",
                    sizeFontSubtitulo: 15),
                contatoContainer(
                  Icons.phone,
                  "Telefone",
                  "(61) 983753695",
                ),
                contatoContainer(
                    Icons.location_on, "Localização", "Brasília - DF"),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
