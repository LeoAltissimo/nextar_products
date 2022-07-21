import 'package:flutter_modular/flutter_modular.dart';
import 'package:nextar_products/app/core/flutter_flow/flutter_flow_theme.dart';
import 'package:nextar_products/app/core/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nextar_products/app/modules/auth/controllers/welcome_controller.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends ModularState<WelcomeView, WelcomeController> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // controller.checkIsAuthenticated();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          child: Align(
            alignment: const AlignmentDirectional(0, 0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SvgPicture.network(
                    'https://savecoinfiles.nyc3.cdn.digitaloceanspaces.com/misc/nextar/nextarlogo2.svg',
                    width: 100,
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 44, 0, 16),
                    child: Text(
                      'Gerencie seus  produtos da melhor maneira',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0, 125, 0, 16),
                    child: FFButtonWidget(
                      onPressed: () {
                        Modular.to
                            .pushNamedAndRemoveUntil("/signup", (_) => false);
                      },
                      text: 'Crie uma conta',
                      options: FFButtonOptions(
                        width: 130,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                        color: const Color(0xFFFF334C),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      Modular.to
                          .pushNamedAndRemoveUntil("/login", (_) => false);
                    },
                    text: 'Entrar',
                    options: FFButtonOptions(
                      width: 130,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                      color: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 18,
                              ),
                      borderSide: const BorderSide(
                        color: Color(0xFF242424),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Text(
                      'Realize o acesso clicando nos botões acima',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
