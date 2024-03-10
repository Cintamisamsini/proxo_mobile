import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'confirm_password_model.dart';
export 'confirm_password_model.dart';

class ConfirmPasswordWidget extends StatefulWidget {
  const ConfirmPasswordWidget({super.key});

  @override
  State<ConfirmPasswordWidget> createState() => _ConfirmPasswordWidgetState();
}

class _ConfirmPasswordWidgetState extends State<ConfirmPasswordWidget> {
  late ConfirmPasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmPasswordModel());

    _model.tfPasswordController ??= TextEditingController();
    _model.tfPasswordFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).white,
                FlutterFlowTheme.of(context).white
              ],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
          ),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 140.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  60.0, 16.0, 60.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Tetapkan kata sandi',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(),
                              child: Visibility(
                                visible: functions
                                        .passCheckupProgress(
                                            _model.tfPasswordController.text)
                                        .toString() ==
                                    '1.0',
                                child: Lottie.asset(
                                  'assets/lottie_animations/Green_Nature_Ecology_Logo_(1).mp4.lottie.json',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.cover,
                                  repeat: false,
                                  animate: true,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40.0, 0.0, 40.0, 0.0),
                                            child: Container(
                                              width: 280.0,
                                              height: 65.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20.0,
                                                    color: Color(0x14000000),
                                                    offset: Offset(0.0, 10.0),
                                                  )
                                                ],
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(5.0),
                                                  bottomRight:
                                                      Radius.circular(5.0),
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(10.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      flex: 4,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .tfPasswordController,
                                                        focusNode: _model
                                                            .tfPasswordFocusNode,
                                                        onChanged: (_) =>
                                                            EasyDebounce
                                                                .debounce(
                                                          '_model.tfPasswordController',
                                                          Duration(
                                                              milliseconds:
                                                                  500),
                                                          () => setState(() {}),
                                                        ),
                                                        autofocus: true,
                                                        obscureText: !_model
                                                            .tfPasswordVisibility,
                                                        decoration:
                                                            InputDecoration(
                                                          hintText:
                                                              'Set Disini',
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                          errorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                          focusedErrorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                          suffixIcon: InkWell(
                                                            onTap: () =>
                                                                setState(
                                                              () => _model
                                                                      .tfPasswordVisibility =
                                                                  !_model
                                                                      .tfPasswordVisibility,
                                                            ),
                                                            focusNode: FocusNode(
                                                                skipTraversal:
                                                                    true),
                                                            child: Icon(
                                                              _model.tfPasswordVisibility
                                                                  ? Icons
                                                                      .visibility_outlined
                                                                  : Icons
                                                                      .visibility_off_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 22.0,
                                                            ),
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      15.0,
                                                                ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        validator: _model
                                                            .tfPasswordControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 3.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                LinearPercentIndicator(
                                                  percent: functions
                                                      .passCheckupProgress(_model
                                                          .tfPasswordController
                                                          .text),
                                                  width: 274.0,
                                                  lineHeight: 8.0,
                                                  animation: true,
                                                  animateFromLastPercent: true,
                                                  progressColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  barRadius:
                                                      Radius.circular(50.0),
                                                  padding: EdgeInsets.zero,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 280.0,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 36.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (getJsonField(
                                    functions.passCheckupJSON(
                                        _model.tfPasswordController.text),
                                    r'''$.moreThan8Char''',
                                  ))
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 6.0, 0.0),
                                      child: Icon(
                                        Icons.check_circle,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 16.0,
                                      ),
                                    ),
                                  if (!getJsonField(
                                    functions.passCheckupJSON(
                                        _model.tfPasswordController.text),
                                    r'''$.moreThan8Char''',
                                  ))
                                    Text(
                                      '8+ karakter',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w300,
                                            lineHeight: 1.7,
                                          ),
                                    ),
                                  if (getJsonField(
                                    functions.passCheckupJSON(
                                        _model.tfPasswordController.text),
                                    r'''$.moreThan8Char''',
                                  ))
                                    Text(
                                      '8+ karakter',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w500,
                                            lineHeight: 1.7,
                                          ),
                                    ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (getJsonField(
                                    functions.passCheckupJSON(
                                        _model.tfPasswordController.text),
                                    r'''$.hasUppercase''',
                                  ))
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 6.0, 0.0),
                                      child: Icon(
                                        Icons.check_circle,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 16.0,
                                      ),
                                    ),
                                  if (!getJsonField(
                                    functions.passCheckupJSON(
                                        _model.tfPasswordController.text),
                                    r'''$.hasUppercase''',
                                  ))
                                    Text(
                                      'Memiliki huruf besar',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w300,
                                            lineHeight: 1.7,
                                          ),
                                    ),
                                  if (getJsonField(
                                    functions.passCheckupJSON(
                                        _model.tfPasswordController.text),
                                    r'''$.hasUppercase''',
                                  ))
                                    Text(
                                      'Memiliki huruf besar',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w500,
                                            lineHeight: 1.7,
                                          ),
                                    ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (getJsonField(
                                    functions.passCheckupJSON(
                                        _model.tfPasswordController.text),
                                    r'''$.hasDigit''',
                                  ))
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 6.0, 0.0),
                                      child: Icon(
                                        Icons.check_circle,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 16.0,
                                      ),
                                    ),
                                  if (!getJsonField(
                                    functions.passCheckupJSON(
                                        _model.tfPasswordController.text),
                                    r'''$.hasDigit''',
                                  ))
                                    Text(
                                      'Memiliki Digit',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w300,
                                            lineHeight: 1.7,
                                          ),
                                    ),
                                  if (getJsonField(
                                    functions.passCheckupJSON(
                                        _model.tfPasswordController.text),
                                    r'''$.hasDigit''',
                                  ))
                                    Text(
                                      'Memiliki Digit',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w500,
                                            lineHeight: 1.7,
                                          ),
                                    ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (getJsonField(
                                    functions.passCheckupJSON(
                                        _model.tfPasswordController.text),
                                    r'''$.hasSpecialChar''',
                                  ))
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 6.0, 0.0),
                                      child: Icon(
                                        Icons.check_circle,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 16.0,
                                      ),
                                    ),
                                  if (!getJsonField(
                                    functions.passCheckupJSON(
                                        _model.tfPasswordController.text),
                                    r'''$.hasSpecialChar''',
                                  ))
                                    Text(
                                      'Memiliki Karakter Khusus',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w300,
                                            lineHeight: 1.7,
                                          ),
                                    ),
                                  if (getJsonField(
                                    functions.passCheckupJSON(
                                        _model.tfPasswordController.text),
                                    r'''$.hasSpecialChar''',
                                  ))
                                    Text(
                                      'Memiliki Karakter Khusus',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w500,
                                            lineHeight: 1.7,
                                          ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              40.0, 36.0, 40.0, 24.0),
                          child: Container(
                            width: double.infinity,
                            height: 60.0,
                            child: Stack(
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    if (functions
                                            .passCheckupProgress(_model
                                                .tfPasswordController.text)
                                            .toString() ==
                                        '1.0') {
                                      GoRouter.of(context)
                                          .prepareAuthEvent(true);

                                      final user = await authManager
                                          .createAccountWithEmail(
                                        context,
                                        FFAppState().email,
                                        _model.tfPasswordController.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      await UsersRecord.collection
                                          .doc(user.uid)
                                          .update(createUsersRecordData(
                                            email: FFAppState().email,
                                            displayName:
                                                FFAppState().displayname,
                                            kreditDampak: 0,
                                          ));

                                      context.goNamedAuth(
                                        'ChoosePekerjaan',
                                        context.mounted,
                                        ignoreRedirect: true,
                                      );
                                    } else {
                                      return;
                                    }
                                  },
                                  text: functions
                                              .passCheckupProgress(_model
                                                  .tfPasswordController.text)
                                              .toString() ==
                                          '1.0'
                                      ? 'Submit'
                                      : 'Memvalidasi...',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 60.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: functions
                                                .passCheckupProgress(_model
                                                    .tfPasswordController.text)
                                                .toString() ==
                                            '1.0'
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .secondary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: Colors.white,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
