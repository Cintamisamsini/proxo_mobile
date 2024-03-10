import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for NameFieldEmail widget.
  FocusNode? nameFieldEmailFocusNode;
  TextEditingController? nameFieldEmailController;
  String? Function(BuildContext, String?)? nameFieldEmailControllerValidator;
  String? _nameFieldEmailControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Mohon di isi';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Ini bukan email';
    }
    return null;
  }

  // State field(s) for NameField widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldController;
  late bool nameFieldVisibility;
  String? Function(BuildContext, String?)? nameFieldControllerValidator;
  String? _nameFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Mohon di isi';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nameFieldEmailControllerValidator = _nameFieldEmailControllerValidator;
    nameFieldVisibility = false;
    nameFieldControllerValidator = _nameFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFieldEmailFocusNode?.dispose();
    nameFieldEmailController?.dispose();

    nameFieldFocusNode?.dispose();
    nameFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
