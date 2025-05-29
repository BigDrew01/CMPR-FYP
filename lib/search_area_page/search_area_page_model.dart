import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'search_area_page_widget.dart' show SearchAreaPageWidget;
import 'package:flutter/material.dart';

class SearchAreaPageModel extends FlutterFlowModel<SearchAreaPageWidget> {
  ///  Local state fields for this page.

  double? selectedLatitude;

  double? selectedLongitude;

  String? crimeCategories;

  int? crimeCounts;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  List<CitiesRecord>? dropDownPreviousSnapshot;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  CitiesRecord? selectedNameCopy;
  // Stores action output result for [Backend Call - API (getCrimeData)] action in Button widget.
  ApiCallResponse? apiResultnnu;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
