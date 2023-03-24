import '/auth/firebase_user_provider.dart';
import '/backend/backend.dart';
import '/components/bottom_sheet_place_info_widget.dart';
import '/components/bottom_sheets_recommend_charge_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/log_in/log_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_home_logged_in_model.dart';
export 'main_home_logged_in_model.dart';

class MainHomeLoggedInWidget extends StatefulWidget {
  const MainHomeLoggedInWidget({Key? key}) : super(key: key);

  @override
  _MainHomeLoggedInWidgetState createState() => _MainHomeLoggedInWidgetState();
}

class _MainHomeLoggedInWidgetState extends State<MainHomeLoggedInWidget> {
  late MainHomeLoggedInModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainHomeLoggedInModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.black,
        barrierColor: Color(0x00000000),
        context: context,
        builder: (context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              height: 180.0,
              child: BottomSheetsRecommendChargeWidget(),
            ),
          );
        },
      ).then((value) => setState(() {}));
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ChargeMarkerRecord>>(
      stream: queryChargeMarkerRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<ChargeMarkerRecord> mainHomeLoggedInChargeMarkerRecordList =
            snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: false,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Visibility(
                visible: responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: FlutterFlowGoogleMap(
                              controller: _model.googleMapsController,
                              onCameraIdle: (latLng) =>
                                  _model.googleMapsCenter = latLng,
                              initialLocation: _model.googleMapsCenter ??=
                                  LatLng(37.5150049, 127.1041651),
                              markers: mainHomeLoggedInChargeMarkerRecordList
                                  .map(
                                    (mainHomeLoggedInChargeMarkerRecord) =>
                                        FlutterFlowMarker(
                                      mainHomeLoggedInChargeMarkerRecord
                                          .reference.path,
                                      mainHomeLoggedInChargeMarkerRecord
                                          .location!,
                                      () async {
                                        if (loggedIn) {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            barrierColor: Color(0x00000000),
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: Container(
                                                  height: 180.0,
                                                  child:
                                                      BottomSheetPlaceInfoWidget(
                                                    placeName:
                                                        mainHomeLoggedInChargeMarkerRecord,
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));
                                        } else {
                                          var confirmDialogResponse =
                                              await showDialog<bool>(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text('로그인 필요'),
                                                        content: Text(
                                                            '로드인후 사용 가능합니다. 로그인 하시려면 확인 버튼을 누르세요.'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    false),
                                                            child: Text('취소'),
                                                          ),
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    true),
                                                            child: Text('확인'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ) ??
                                                  false;
                                          if (confirmDialogResponse) {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    LogInWidget(),
                                              ),
                                            );
                                          } else {
                                            Navigator.pop(context);
                                          }
                                        }
                                      },
                                    ),
                                  )
                                  .toList(),
                              markerColor: GoogleMarkerColor.red,
                              mapType: MapType.normal,
                              style: GoogleMapStyle.standard,
                              initialZoom: 14.0,
                              allowInteraction: true,
                              allowZoom: true,
                              showZoomControls: true,
                              showLocation: true,
                              showCompass: true,
                              showMapToolbar: true,
                              showTraffic: true,
                              centerMapOnMarkerTap: true,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: FlutterFlowChoiceChips(
                                          options: [
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              's0oaeoh6' /* 충전속도 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'mel8a4z0' /* DC콤보, DC차데모, AC3상 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'mrwowzru' /* 충전기상태 */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'husxmfwd' /* 차밥결제 */,
                                            ))
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.choiceChipsValue =
                                                  val?.first),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1Family,
                                                      color: Colors.white,
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family),
                                                    ),
                                            iconColor: Color(0x00000000),
                                            iconSize: 25.0,
                                            elevation: 4.0,
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor: Colors.white,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyText2
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText2Family,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2Family),
                                                ),
                                            iconColor: Color(0x00000000),
                                            iconSize: 18.0,
                                            elevation: 4.0,
                                          ),
                                          chipSpacing: 5.0,
                                          multiselect: false,
                                          alignment: WrapAlignment.center,
                                          controller: _model
                                                  .choiceChipsController ??=
                                              FormFieldController<List<String>>(
                                            [],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.9, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            3.0, 3.0, 3.0, 3.0),
                                        child: InkWell(
                                          onTap: () async {
                                            setAppLanguage(context, 'ko');
                                          },
                                          child: Icon(
                                            Icons.refresh_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 30.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.9, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            3.0, 3.0, 3.0, 3.0),
                                        child: Icon(
                                          Icons.star_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.9, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            3.0, 3.0, 3.0, 3.0),
                                        child: InkWell(
                                          onTap: () async {
                                            currentUserLocationValue =
                                                await getCurrentUserLocation(
                                                    defaultLocation:
                                                        LatLng(0.0, 0.0));
                                            await _model
                                                .googleMapsController.future
                                                .then(
                                              (c) => c.animateCamera(
                                                CameraUpdate.newLatLng(
                                                    currentUserLocationValue!
                                                        .toGoogleMaps()),
                                              ),
                                            );
                                          },
                                          child: Icon(
                                            Icons.location_searching_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 30.0,
                                          ),
                                        ),
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
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
