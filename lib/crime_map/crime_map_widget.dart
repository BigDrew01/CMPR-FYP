import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'crime_map_model.dart';
export 'crime_map_model.dart';

class CrimeMapWidget extends StatefulWidget {
  const CrimeMapWidget({
    super.key,
    required this.crimeData,
    required this.lat,
    required this.lng,
  });

  final List<dynamic>? crimeData;
  final double? lat;
  final double? lng;

  static String routeName = 'CrimeMap';
  static String routePath = '/CrimeMap';

  @override
  State<CrimeMapWidget> createState() => _CrimeMapWidgetState();
}

class _CrimeMapWidgetState extends State<CrimeMapWidget> {
  late CrimeMapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CrimeMapModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().bottomsheet = false;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: Color(0xFF0C29AB),
            automaticallyImplyLeading: true,
            title: Text(
              'CMPR',
              style: FlutterFlowTheme.of(context).displayMedium.override(
                    font: GoogleFonts.interTight(
                      fontWeight:
                          FlutterFlowTheme.of(context).displayMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).displayMedium.fontStyle,
                    ),
                    color: Color(0xFFCCFF00),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).displayMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).displayMedium.fontStyle,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        FlutterFlowGoogleMap(
                          controller: _model.googleMapsController,
                          onCameraIdle: (latLng) =>
                              _model.googleMapsCenter = latLng,
                          initialLocation: _model.googleMapsCenter ??= functions
                              .double2LatLng(widget.lat, widget.lng)!,
                          markers: (functions.listDoubletoLatLng(
                                      widget.crimeData
                                          ?.map((e) => getJsonField(
                                                e,
                                                r'''$.location.longitude''',
                                              ))
                                          .toList()
                                          .map((e) => e.toString())
                                          .toList()
                                          .toList(),
                                      widget.crimeData
                                          ?.map((e) => getJsonField(
                                                e,
                                                r'''$.location.latitude''',
                                              ))
                                          .toList()
                                          .map((e) => e.toString())
                                          .toList()
                                          .toList()) ??
                                  [])
                              .map(
                                (marker) => FlutterFlowMarker(
                                  marker.serialize(),
                                  marker,
                                  () async {
                                    FFAppState().bottomsheet = true;
                                    safeSetState(() {});
                                  },
                                ),
                              )
                              .toList(),
                          markerColor: GoogleMarkerColor.violet,
                          mapType: MapType.normal,
                          style: GoogleMapStyle.standard,
                          initialZoom: 14.0,
                          allowInteraction: true,
                          allowZoom: true,
                          showZoomControls: true,
                          showLocation: true,
                          showCompass: false,
                          showMapToolbar: false,
                          showTraffic: false,
                          centerMapOnMarkerTap: true,
                        ),
                        if (FFAppState().bottomsheet == true)
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: PointerInterceptor(
                              intercepting: isWeb,
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF0C29AB),
                                      Color(0xFFCCFF00)
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(0.0, -1.0),
                                    end: AlignmentDirectional(0, 1.0),
                                  ),
                                ),
                                child: Text(
                                  valueOrDefault<String>(
                                    (widget.crimeData?.elementAtOrNull(
                                            functions.indexMarkerIdentifier(
                                                _model.googleMapsCenter,
                                                functions
                                                    .listDoubletoLatLng(
                                                        widget.crimeData
                                                            ?.map((e) =>
                                                                getJsonField(
                                                                  e,
                                                                  r'''$.location.longitude''',
                                                                ))
                                                            .toList()
                                                            .map((e) =>
                                                                e.toString())
                                                            .toList()
                                                            .toList(),
                                                        widget.crimeData
                                                            ?.map((e) =>
                                                                getJsonField(
                                                                  e,
                                                                  r'''$.location.latitude''',
                                                                ))
                                                            .toList()
                                                            .map((e) =>
                                                                e.toString())
                                                            .toList()
                                                            .toList())
                                                    ?.toList())!))
                                        ?.toString(),
                                    'Crime Summary',
                                  ),
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
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
            ],
          ),
        ),
      ),
    );
  }
}
