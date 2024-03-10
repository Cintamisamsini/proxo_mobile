import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chart_a_q_i_model.dart';
export 'chart_a_q_i_model.dart';

class ChartAQIWidget extends StatefulWidget {
  const ChartAQIWidget({super.key});

  @override
  State<ChartAQIWidget> createState() => _ChartAQIWidgetState();
}

class _ChartAQIWidgetState extends State<ChartAQIWidget> {
  late ChartAQIModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartAQIModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 250.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primary,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: 250.0,
          child: Stack(
            alignment: AlignmentDirectional(0.0, 0.0),
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 150.0,
                child: FlutterFlowLineChart(
                  data: [
                    FFLineChartData(
                      xData: FFAppState().chartX,
                      yData: FFAppState().chartY,
                      settings: LineChartBarData(
                        color: FlutterFlowTheme.of(context).white,
                        barWidth: 4.0,
                        isCurved: true,
                        dotData: FlDotData(show: false),
                      ),
                    )
                  ],
                  chartStylingInfo: ChartStylingInfo(
                    backgroundColor: FlutterFlowTheme.of(context).primary,
                    showBorder: false,
                  ),
                  axisBounds: AxisBounds(),
                  xAxisLabelInfo: AxisLabelInfo(),
                  yAxisLabelInfo: AxisLabelInfo(),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.show_chart_rounded,
                        color: FlutterFlowTheme.of(context).white,
                        size: 24.0,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Rata\' Indeks Udara (AQI)',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: FlutterFlowTheme.of(context).white,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.0, 1.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 10.0, 13.0),
                        child: Text(
                          '7 Hari',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                        ),
                      ),
                      Text(
                        FFAppState().avgLevel.toString(),
                        style:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Manrope',
                                  color: FlutterFlowTheme.of(context).white,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
