import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'hotels_list_model.dart';
export 'hotels_list_model.dart';

class HotelsListWidget extends StatefulWidget {
  const HotelsListWidget({Key? key}) : super(key: key);

  @override
  _HotelsListWidgetState createState() => _HotelsListWidgetState();
}

class _HotelsListWidgetState extends State<HotelsListWidget> {
  late HotelsListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HotelsListModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Hotels',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22.0,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              StreamBuilder<List<HotelsRecord>>(
                stream: queryHotelsRecord(),
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
                  List<HotelsRecord> listViewHotelsRecordList = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewHotelsRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewHotelsRecord =
                          listViewHotelsRecordList[listViewIndex];
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () async {
                              context.pushNamed(
                                'reviewsList',
                                queryParams: {
                                  'hotelDocRef': serializeParam(
                                    listViewHotelsRecord.reference,
                                    ParamType.DocumentReference,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Text(
                              listViewHotelsRecord.rating!.toString(),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              context.pushNamed(
                                'hotelDetail',
                                queryParams: {
                                  'hotelDocRef': serializeParam(
                                    listViewHotelsRecord.reference,
                                    ParamType.DocumentReference,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Text(
                              listViewHotelsRecord.name!,
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                          Text(
                            listViewHotelsRecord.city!,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: Color(0xFF00FFAA),
                            icon: Icon(
                              Icons.attach_money,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
