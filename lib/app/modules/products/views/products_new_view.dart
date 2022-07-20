import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nextar_products/app/core/flutter_flow/flutter_flow_theme.dart';
import 'package:nextar_products/app/core/flutter_flow/flutter_flow_util.dart';
import 'package:nextar_products/app/core/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nextar_products/app/modules/products/models/product_model.dart';
import 'package:nextar_products/app/modules/products/controllers/products_controller.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  _ProductsViewState createState() => _ProductsViewState();
}

class _ProductsViewState
    extends ModularState<ProductsView, ProductsController> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'Produtos',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Montserrat',
                color: FlutterFlowTheme.of(context).primaryText,
              ),
        ),
        actions: [
          FFButtonWidget(
            onPressed: () {
              Modular.to.pushNamed("/home/productdetails", arguments: null);
            },
            text: 'Adicionar',
            icon: const Icon(
              Icons.add,
              color: Color(0xFFFF334C),
              size: 15,
            ),
            options: FFButtonOptions(
              width: 140,
              height: 40,
              color: Colors.white,
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Montserrat',
                    color: Colors.black,
                    fontSize: 14,
                  ),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(0),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Observer(builder: (_) {
          final list = controller.productList?.data ?? [];

          if (controller.productList?.hasError == true) {
            return Center(
              child: ElevatedButton(
                onPressed: controller.getList,
                child: const Text('Error'),
              ),
            );
          }

          if (controller.productList?.data == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: list?.length ?? 0,
            padding: EdgeInsets.only(top: 18),
            itemBuilder: (_, index) {
              ProductModel model = list[index];

              return Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 7,
                        color: Color(0x2E000000),
                        offset: Offset(0, 4),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                model.name ?? "Sem nome",
                                style: FlutterFlowTheme.of(context).subtitle2,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: Text(
                                  model.price.toString() ?? "R\$ 00,00",
                                  style: FlutterFlowTheme.of(context).bodyText2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                          child: Column(
                            children: [
                              Text(
                                'R\$ ${model.price.toString() ?? "00,00"}',
                                style: FlutterFlowTheme.of(context).subtitle1,
                              ),
                              Text(
                                'Ref: ${model.refCode}',
                                style: FlutterFlowTheme.of(context).bodyText2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
