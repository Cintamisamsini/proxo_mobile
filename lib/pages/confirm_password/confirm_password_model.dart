import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'confirm_password_widget.dart' show ConfirmPasswordWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ConfirmPasswordModel extends FlutterFlowModel<ConfirmPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for tf_password widget.
  FocusNode? tfPasswordFocusNode;
  TextEditingController? tfPasswordController;
  late bool tfPasswordVisibility;
  String? Function(BuildContext, String?)? tfPasswordControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    tfPasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tfPasswordFocusNode?.dispose();
    tfPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
