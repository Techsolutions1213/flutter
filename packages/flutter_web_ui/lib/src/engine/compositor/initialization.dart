part of engine;

/// EXPERIMENTAL: Enable the Skia-based rendering backend.
const bool experimentalUseSkia = false;

/// The URL to use when downloading the CanvasKit script and associated wasm.
const String canvasKitBaseUrl = 'https://unpkg.com/canvaskit-wasm@0.6.0/bin/';

/// Initialize the Skia backend.
///
/// This calls `CanvasKitInit` and assigns the global [canvasKit] object.
Future<void> initializeSkia() {
  final Completer<void> canvasKitCompleter = Completer<void>();
  StreamSubscription<html.Event> loadSubscription;
  loadSubscription = domRenderer.canvasKitScript.onLoad.listen((_) {
    loadSubscription.cancel();
    final js.JsObject canvasKitInitArgs = js.JsObject.jsify(<dynamic, dynamic>{
      'locateFile': js.allowInterop((String file) => canvasKitBaseUrl + file)
    });
    final js.JsObject canvasKitInit =
        js.JsObject(js.context['CanvasKitInit'], <dynamic>[canvasKitInitArgs]);
    final js.JsObject canvasKitInitPromise = canvasKitInit.callMethod('ready');
    canvasKitInitPromise.callMethod('then', <dynamic>[
      js.allowInterop((js.JsObject ck) {
        canvasKit = ck;
        canvasKitCompleter.complete();
      })
    ]);
  });
  return canvasKitCompleter.future;
}

/// The entrypoint into all CanvasKit functions and classes.
///
/// This is created by [initializeSkia].
js.JsObject canvasKit;
