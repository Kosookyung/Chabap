import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registration_phone_code/registration_phone_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrationPhoneModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailField widget.
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // State field(s) for PassWordField widget.
  TextEditingController? passWordFieldController1;
  late bool passWordFieldVisibility1;
  String? Function(BuildContext, String?)? passWordFieldController1Validator;
  // State field(s) for PassWordField widget.
  TextEditingController? passWordFieldController2;
  late bool passWordFieldVisibility2;
  String? Function(BuildContext, String?)? passWordFieldController2Validator;
  // State field(s) for PhoneField widget.
  TextEditingController? phoneFieldController;
  String? Function(BuildContext, String?)? phoneFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passWordFieldVisibility1 = false;
    passWordFieldVisibility2 = false;
  }

  void dispose() {
    emailFieldController?.dispose();
    passWordFieldController1?.dispose();
    passWordFieldController2?.dispose();
    phoneFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
