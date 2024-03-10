import '/components/jenis_sampah_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'rank_kredit_dampak_copy_widget.dart' show RankKreditDampakCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RankKreditDampakCopyModel
    extends FlutterFlowModel<RankKreditDampakCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for jenisSampah component.
  late JenisSampahModel jenisSampahModel1;
  // Model for jenisSampah component.
  late JenisSampahModel jenisSampahModel2;
  // Model for jenisSampah component.
  late JenisSampahModel jenisSampahModel3;
  // Model for jenisSampah component.
  late JenisSampahModel jenisSampahModel4;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    jenisSampahModel1 = createModel(context, () => JenisSampahModel());
    jenisSampahModel2 = createModel(context, () => JenisSampahModel());
    jenisSampahModel3 = createModel(context, () => JenisSampahModel());
    jenisSampahModel4 = createModel(context, () => JenisSampahModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    jenisSampahModel1.dispose();
    jenisSampahModel2.dispose();
    jenisSampahModel3.dispose();
    jenisSampahModel4.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
