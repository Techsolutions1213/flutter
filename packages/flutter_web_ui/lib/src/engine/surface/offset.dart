// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

part of engine;

/// A surface that translates its children using CSS transform and translate.
class PersistedOffset extends PersistedContainerSurface {
  PersistedOffset(Object paintedBy, this.dx, this.dy) : super(paintedBy);

  /// Horizontal displacement.
  final double dx;

  /// Vertical displacement.
  final double dy;

  @override
  void recomputeTransformAndClip() {
    _transform = parent._transform;
    if (dx != 0.0 || dy != 0.0) {
      _transform = _transform.clone();
      _transform.translate(dx, dy);
    }
    _globalClip = parent._globalClip;
  }

  @override
  html.Element createElement() {
    return defaultCreateElement('flt-offset')..style.transformOrigin = '0 0 0';
  }

  @override
  void apply() {
    rootElement.style.transform = 'translate(${dx}px, ${dy}px)';
  }

  @override
  void update(PersistedOffset oldSurface) {
    super.update(oldSurface);

    if (oldSurface.dx != dx || oldSurface.dy != dy) {
      apply();
    }
  }
}
