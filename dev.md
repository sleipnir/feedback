Web bug
- submit button not working.

rror: Assertion failed:
org-dartlang-sdk:///flutter_web_sdk/lib/_engine/engine/html/scene_builder.dart:92:16
matrix4[0] == window.devicePixelRatio &&
           matrix4[5] == window.devicePixelRatio
is not true
    at Object.throw_ [as throw] (http://localhost:63054/dart_sdk.js:4339:11)
    at Object.assertFailed (http://localhost:63054/dart_sdk.js:4282:15)
    at _engine.SurfaceSceneBuilder.new.pushTransform
    (http://localhost:63054/dart_sdk.js:156899:133)
    at layer$.OffsetLayer.new.toImage
    (http://localhost:63054/packages/flutter/src/rendering/layer.dart.lib.js:1631:17)
    at toImage.next (<anonymous>)
    at runBody (http://localhost:63054/dart_sdk.js:37699:34)
    at Object._async [as async] (http://localhost:63054/dart_sdk.js:37730:7)
    at layer$.OffsetLayer.new.toImage
    (http://localhost:63054/packages/flutter/src/rendering/layer.dart.lib.js:1625:20)
    at proxy_box.RenderRepaintBoundary.new.toImage
    (http://localhost:63054/packages/flutter/src/rendering/proxy_box.dart.lib.js:3222:26)
    at screenshot.ScreenshotController.new.<anonymous>
    (http://localhost:63054/packages/feedback/src/screenshot.dart.lib.js:82:43)
    at Generator.next (<anonymous>)
    at runBody (http://localhost:63054/dart_sdk.js:37699:34)
    at Object._async [as async] (http://localhost:63054/dart_sdk.js:37730:7)
    at http://localhost:63054/packages/feedback/src/screenshot.dart.lib.js:79:70
    at http://localhost:63054/dart_sdk.js:32076:33
    at internalCallback (http://localhost:63054/dart_sdk.js:23835:11)


https://github.com/ueman/feedback/issues/13

seems to be caused by this:
https://github.com/flutter/flutter/issues/59072

Dom version
CanvasKit version

--


Desktop
- works fine.

---

What to do with the data ?
- send over grpc
- then send as email to SuperAdmin 

here is the code intersection !
- https://github.com/ueman/feedback/issues/10