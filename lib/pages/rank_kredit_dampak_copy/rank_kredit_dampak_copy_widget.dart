import '/components/jenis_sampah_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rank_kredit_dampak_copy_model.dart';
export 'rank_kredit_dampak_copy_model.dart';

class RankKreditDampakCopyWidget extends StatefulWidget {
  const RankKreditDampakCopyWidget({super.key});

  @override
  State<RankKreditDampakCopyWidget> createState() =>
      _RankKreditDampakCopyWidgetState();
}

class _RankKreditDampakCopyWidgetState extends State<RankKreditDampakCopyWidget>
    with TickerProviderStateMixin {
  late RankKreditDampakCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 175.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 175.ms,
          duration: 400.ms,
          begin: Offset(10.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 175.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 100.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: Offset(10.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'jenisSampahOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 400.ms,
          begin: Offset(10.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'jenisSampahOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: Offset(10.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'jenisSampahOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 400.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 400.ms,
          begin: Offset(10.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'jenisSampahOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 500.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 500.ms,
          duration: 400.ms,
          begin: Offset(10.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 500.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RankKreditDampakCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Green_Nature_Ecology_Logo_(3).png',
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 25.0, 30.0, 30.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Tolong perhatikan semua bentuk respond kamu bersifat publik jadi mohon perhatikan kata-kata dan hargai pendapat publik',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).accent2,
                                    fontSize: 12.0,
                                  ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation1']!),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Jenis Sampah',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Manrope',
                              color: FlutterFlowTheme.of(context).secondary,
                              fontSize: 16.0,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation2']!),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 20.0),
                      child: wrapWithModel(
                        model: _model.jenisSampahModel1,
                        updateCallback: () => setState(() {}),
                        child: JenisSampahWidget(
                          title: 'Berry Protein Smoothie',
                          portion: '350g',
                          calories: '280 cal',
                          label: 'GL 6',
                          image:
                              'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/berry-smoothie.jpg',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['jenisSampahOnPageLoadAnimation1']!),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 20.0),
                      child: wrapWithModel(
                        model: _model.jenisSampahModel2,
                        updateCallback: () => setState(() {}),
                        child: JenisSampahWidget(
                          title: 'Veggie Omelette',
                          portion: '200g',
                          calories: '270 cal',
                          label: 'GL 7',
                          image:
                              'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/omelette.jpg',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['jenisSampahOnPageLoadAnimation2']!),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 20.0),
                      child: wrapWithModel(
                        model: _model.jenisSampahModel3,
                        updateCallback: () => setState(() {}),
                        child: JenisSampahWidget(
                          title: 'Mediterranean Hummus Plate',
                          portion: '230g',
                          calories: '250 cal',
                          label: 'GL 9',
                          image:
                              'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/hummus.jpg',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['jenisSampahOnPageLoadAnimation3']!),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 20.0),
                      child: wrapWithModel(
                        model: _model.jenisSampahModel4,
                        updateCallback: () => setState(() {}),
                        child: JenisSampahWidget(
                          title: 'Fresh Quinoa Salad',
                          portion: '200g',
                          calories: '325 cal',
                          label: 'GL 14',
                          image:
                              'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/quinoa-salad.jpg',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['jenisSampahOnPageLoadAnimation4']!),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
