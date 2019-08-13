// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

part of engine;

/// A surface that transforms its children using CSS transform.
class PersistedTransform extends PersistedContainerSurface {
  PersistedTransform(Object paintedBy, this.matrix4) : super(paintedBy);

  final Float64List matrix4;

  @override
  void recomputeTransformAndClip() {
    _transform = parent._transform.multiplied(Matrix4.fromFloat64List(matrix4));
    _globalClip = parent._globalClip;
  }

  @override
  html.Element createElement() {
    return defaultCreateElement('flt-transform')
      ..style.transformOrigin = '0 0 0';
  }

  @override
  void apply() {
    rootElement.style.transform = float64ListToCssTransform(matrix4);
  }

  @override
  void update(PersistedTransform oldSurface) {
    super.update(oldSurface);

    if (identical(oldSurface.matrix4, matrix4)) {
      return;
    }

    bool matrixChanged = false;
    for (int i = 0; i < matrix4.length; i++) {
      if (matrix4[i] != oldSurface.matrix4[i]) {
        matrixChanged = true;
        break;
      }
    }

    if (matrixChanged) {
      apply();
    }
  }
}
