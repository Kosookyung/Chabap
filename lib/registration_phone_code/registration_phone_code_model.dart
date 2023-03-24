import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/log_in/log_in_widget.dart';
import '/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrationPhoneCodeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailField widget.
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // State field(s) for PassWordField widget.
  TextEditingController? passWordFieldController;
  late bool passWordFieldVisibility;
  String? Function(BuildContext, String?)? passWordFieldControllerValidator;
  // State field(s) for ConfirmPassWordField widget.
  TextEditingController? confirmPassWordFieldController;
  late bool confirmPassWordFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPassWordFieldControllerValidator;
  // State field(s) for PhoneField widget.
  TextEditingController? phoneFieldController;
  String? Function(BuildContext, String?)? phoneFieldControllerValidator;
  // State field(s) for SMSField widget.
  TextEditingController? sMSFieldController;
  String? Function(BuildContext, String?)? sMSFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passWordFieldVisibility = false;
    confirmPassWordFieldVisibility = false;
  }

  void dispose() {
    emailFieldController?.dispose();
    passWordFieldController?.dispose();
    confirmPassWordFieldController?.dispose();
    phoneFieldController?.dispose();
    sMSFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
