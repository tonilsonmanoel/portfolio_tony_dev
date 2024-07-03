import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_tony_dev/widgets/secao.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();
  final intSecao = 0;

  final keySecao1 = GlobalKey();
  final keySecao2 = GlobalKey();
  final keySecao3 = GlobalKey();
  final keySecao4 = GlobalKey();
  final keySecao5 = GlobalKey();
  final keySecao6 = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void _onMenuClick(int value) {
    final RenderBox renderBox;
    switch (value) {
      case 1:
        renderBox = keySecao1.currentContext!.findRenderObject() as RenderBox;
        break;
      case 2:
        renderBox = keySecao2.currentContext!.findRenderObject() as RenderBox;
        break;
      case 3:
        renderBox = keySecao3.currentContext!.findRenderObject() as RenderBox;
        break;
      case 4:
        renderBox = keySecao4.currentContext!.findRenderObject() as RenderBox;
        break;
      case 5:
        renderBox = keySecao5.currentContext!.findRenderObject() as RenderBox;
        break;
      case 6:
        renderBox = keySecao6.currentContext!.findRenderObject() as RenderBox;
        break;
      default:
        throw Exception();
    }
    final offset = renderBox.localToGlobal(Offset.zero);

    scrollController.animateTo((offset.dy + scrollController.offset) - 50,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 5, 14),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  "assets/logo_tonydev2.png",
                  height: 50,
                  width: 120,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      _onMenuClick(1);
                    },
                    child: const Text(
                      'Inicio',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      _onMenuClick(2);
                    },
                    child: const Text(
                      'Sobre mim',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      _onMenuClick(3);
                    },
                    child: const Text(
                      'Habilidades',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  if (ResponsiveBreakpoints.of(context).largerThan(TABLET)) ...[
                    InkWell(
                      onTap: () {
                        _onMenuClick(4);
                      },
                      child: const Text(
                        'Projetos',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        _onMenuClick(5);
                      },
                      child: const Text(
                        'Redes Sociais',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        _onMenuClick(6);
                      },
                      child: const Text(
                        'Contato',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ]
                ],
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  // Seção Inicio
                  Container(
                    key: keySecao1,
                    width: double.infinity,
                    padding: ResponsiveBreakpoints.of(context)
                            .smallerOrEqualTo(TABLET)
                        ? const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 20)
                        : const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (ResponsiveBreakpoints.of(context)
                            .smallerOrEqualTo(TABLET)) ...[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/imagemdestaque.png",
                                fit: BoxFit.contain,
                                width: MediaQuery.of(context).size.width * 0.80,
                                height:
                                    MediaQuery.of(context).size.height * 0.40,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Text.rich(
                                    const TextSpan(
                                        text: "OLÁ, EU SOU\n",
                                        children: [
                                          TextSpan(
                                              text: "TONILSON MANOEL",
                                              style: TextStyle(
                                                  color: Colors.blueAccent))
                                        ]),
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.kanit(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "DESENVOLVEDOR\nFULL STACK",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.kanit(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ] else ...[
                          Column(
                            children: [
                              Text.rich(
                                const TextSpan(
                                    text: "OLÁ, EU SOU\n",
                                    children: [
                                      TextSpan(
                                          text: "TONILSON MANOEL",
                                          style: TextStyle(
                                              color: Colors.blueAccent))
                                    ]),
                                textAlign: TextAlign.center,
                                style: GoogleFonts.kanit(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "DESENVOLVEDOR\nFULL STACK",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.kanit(
                                    color: Colors.white,
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Image.asset(
                            "assets/imagemdestaque.png",
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: MediaQuery.of(context).size.height * 0.50,
                            fit: BoxFit.contain,
                          ),
                        ]
                      ],
                    ),
                  ),
                  // Fim Seção Inicio
                  // Inicio Seção Sobre mim
                  Container(
                    key: keySecao2,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.white,
                                width: 2.5,
                                style: BorderStyle.solid))),
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sobre mim",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kanit(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: ResponsiveBreakpoints.of(context)
                            .smallerOrEqualTo(MOBILE)
                        ? const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 20)
                        : ResponsiveBreakpoints.of(context)
                                .largerOrEqualTo(DESKTOP)
                            ? const EdgeInsets.symmetric(
                                vertical: 60, horizontal: 90)
                            : const EdgeInsets.symmetric(
                                vertical: 40, horizontal: 35),
                    width: double.infinity,
                    child: AutoSizeText(
                      "Olá, sou Tonilson Manoel, desenvolvedor Full Stack Junior, amo trabalhar preferencialmente como desenvolvedor mobile. Estou no último semestre do curso de Sistemas de Informação e já desenvolvi projetos utilizando HTML, CSS, Java e Flutter.",
                      minFontSize: 13,
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  // Fim Seção Sobre mim
                  // Inicio Seção Habilidade
                  Container(
                    key: keySecao3,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.white,
                                width: 2.5,
                                style: BorderStyle.solid))),
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Habilidades",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kanit(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: ResponsiveBreakpoints.of(context)
                            .smallerOrEqualTo(MOBILE)
                        ? const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 30)
                        : const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 50),
                    child: SecaoHomepage().secao3Homepage(context),
                  ),
                  // Fim Seção Habilidade
                  // Inicio Seção Projeto
                  Container(
                    key: keySecao4,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.white,
                                width: 2.5,
                                style: BorderStyle.solid))),
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Projetos",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kanit(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    width: double.infinity,
                    child: SecaoHomepage().secaoProjeto(context),
                  ),
                  // Fim Seção Projetos
                  // Inicio Seção Redes Sociais
                  Container(
                    key: keySecao5,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.white,
                                width: 2.5,
                                style: BorderStyle.solid))),
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Redes Sociais",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.kanit(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Acompanhe minhas Redes Sociais",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    width: double.infinity,
                    child: SecaoHomepage().secaoRedesSociais(context),
                  ),
                  // Fim Seção Redes Sociais
                  // Inicio Seção Contato
                  Container(
                    key: keySecao6,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.white,
                                width: 2.5,
                                style: BorderStyle.solid))),
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Contato",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.kanit(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    width: double.infinity,
                    child: SecaoHomepage().secaoContato(context),
                  ),
                  // Fim Seção Contato
                  //Rodape
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    //  key: keySecao4,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: Colors.white,
                                width: 2.5,
                                style: BorderStyle.solid))),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: AutoSizeText(
                      "Todos os direitos reservados\nTonilson Manoel - 2024",
                      minFontSize: 12,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
