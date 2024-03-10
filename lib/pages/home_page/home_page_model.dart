import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/article_card_widget.dart';
import '/components/chart_a_q_i_widget.dart';
import '/components/pop_up_sheet_widget.dart';
import '/components/value_list_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ChartAQI component.
  late ChartAQIModel chartAQIModel;
  // Model for ValueListItem component.
  late ValueListItemModel valueListItemModel1;
  // Model for ValueListItem component.
  late ValueListItemModel valueListItemModel2;
  // Model for ArticleCard component.
  late ArticleCardModel articleCardModel1;
  // Model for ArticleCard component.
  late ArticleCardModel articleCardModel2;
  // Model for ArticleCard component.
  late ArticleCardModel articleCardModel3;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    chartAQIModel = createModel(context, () => ChartAQIModel());
    valueListItemModel1 = createModel(context, () => ValueListItemModel());
    valueListItemModel2 = createModel(context, () => ValueListItemModel());
    articleCardModel1 = createModel(context, () => ArticleCardModel());
    articleCardModel2 = createModel(context, () => ArticleCardModel());
    articleCardModel3 = createModel(context, () => ArticleCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    chartAQIModel.dispose();
    valueListItemModel1.dispose();
    valueListItemModel2.dispose();
    articleCardModel1.dispose();
    articleCardModel2.dispose();
    articleCardModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
