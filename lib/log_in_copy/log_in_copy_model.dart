import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/kakao_login/kakao_login_widget.dart';
import '/main.dart';
import '/registration/registration_widget.dart';
import '/search_account/search_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LogInCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailField widget.
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // State field(s) for PassWordField widget.
  TextEditingController? passWordFieldController;
  late bool passWordFieldVisibility;
  String? Function(BuildContext, String?)? passWordFieldControllerValidator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passWordFieldVisibility = false;
  }

  void dispose() {
    emailFieldController?.dispose();
    passWordFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
