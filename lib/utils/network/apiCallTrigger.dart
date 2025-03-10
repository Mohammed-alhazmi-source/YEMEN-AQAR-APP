import 'dart:ui';

class APICallTrigger {
  APICallTrigger._();
  static final List<VoidCallback> _triggerableList = [];
  static void onTrigger(VoidCallback fn) {
    _triggerableList.add(fn);
  }

  static void trigger() {
    for (final i in _triggerableList) {
      i.call();
    }
  }
}
