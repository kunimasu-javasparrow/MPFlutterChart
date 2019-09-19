import 'package:mp_flutter_chart/chart/mp/core/highlight/highlight.dart';
import 'package:mp_flutter_chart/chart/mp/core/data_set/data_set.dart';
import 'package:mp_flutter_chart/chart/mp/core/entry/entry.dart';

mixin OnDrawListener {
  /// Called whenever an entry is added with the finger. Note this is also called for entries that are generated by the
  /// library, when the touch gesture is too fast and skips points.
  ///
  /// @param entry
  ///            the last drawn entry
  void onEntryAdded(Entry entry);

  /// Called whenever an entry is moved by the user after beeing highlighted
  ///
  /// @param entry
  void onEntryMoved(Entry entry);

  /// Called when drawing finger is lifted and the draw is finished.
  ///
  /// @param dataSet
  ///            the last drawn DataSet
  void onDrawFinished(DataSet<Entry> dataSet);
}

/// Listener for callbacks when doing gestures on the chart.
///
/// @author Philipp Jahoda
mixin OnChartGestureListener {
  /// Callbacks when the chart is double-tapped.
  ///
  /// @param me
  void onChartDoubleTapped(double positionX, double positionY);

  /// Callbacks when the chart is single-tapped.
  ///
  /// @param me
  void onChartSingleTapped(double positionX, double positionY);

  /// Callbacks when the chart is scaled / zoomed via pinch zoom gesture.
  ///
  /// @param me
  /// @param scaleX scalefactor on the x-axis
  /// @param scaleY scalefactor on the y-axis
  void onChartScale(
      double positionX, double positionY, double scaleX, double scaleY);

  /// Callbacks when the chart is moved / translated via drag gesture.
  ///
  /// @param me
  /// @param dX translation distance on the x-axis
  /// @param dY translation distance on the y-axis
  void onChartTranslate(
      double positionX, double positionY, double dX, double dY);
}

/// Listener for callbacks when selecting values inside the chart by
/// touch-gesture.
///
/// @author Philipp Jahoda
mixin OnChartValueSelectedListener {
  /// Called when a value has been selected inside the chart.
  ///
  /// @param e The selected Entry
  /// @param h The corresponding highlight object that contains information
  ///          about the highlighted position such as dataSetIndex, ...
  void onValueSelected(Entry e, Highlight h);

  /// Called when nothing has been selected or an "un-select" has been made.
  void onNothingSelected();
}

mixin AnimatorUpdateListener {
  void onAnimationUpdate(double x, double y);

  void onRotateUpdate(double angle);
}
