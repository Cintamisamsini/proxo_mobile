import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pop_up_sheet_model.dart';
export 'pop_up_sheet_model.dart';

class PopUpSheetWidget extends StatefulWidget {
  const PopUpSheetWidget({super.key});

  @override
  State<PopUpSheetWidget> createState() => _PopUpSheetWidgetState();
}

class _PopUpSheetWidgetState extends State<PopUpSheetWidget> {
  late PopUpSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopUpSheetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 380.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(0.0, -3.0),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 200.0,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.71, 1.55),
                    child: Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.597,
                    height: 200.0,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Text(
                            'This is a pop up',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.06, 1.05),
                    child: Image.asset(
                      'assets/images/Green_Nature_Ecology_Logo_(13).png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Skip',
                  options: FFButtonOptions(
                    width: 140.0,
                    height: 70.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Manrope',
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Done',
                  options: FFButtonOptions(
                    width: 140.0,
                    height: 70.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Manrope',
                          color: FlutterFlowTheme.of(context).white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
