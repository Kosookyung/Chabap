import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserGuideWidget extends StatefulWidget {
  const UserGuideWidget({Key? key}) : super(key: key);

  @override
  _UserGuideWidgetState createState() => _UserGuideWidgetState();
}

class _UserGuideWidgetState extends State<UserGuideWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: responsiveVisibility(
        context: context,
        tabletLandscape: false,
      )
          ? AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30,
                ),
                onPressed: () async {
                  Navigator.pop(context);
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  '0r9uvr4t' /* 이용약관 */,
                ),
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: FlutterFlowTheme.of(context).title2Family,
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).title2Family),
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2,
            )
          : null,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'my8omqet' /* 제1조 (목적)
본 약관은 주식회사 차밥(이하 '회사'... */
                        ,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
