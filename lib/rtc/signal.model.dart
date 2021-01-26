import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

abstract class RTCSignal {
  const RTCSignal._();

  const factory RTCSignal.answer(
    String sdp,
  ) = _Answer;
  const factory RTCSignal.offer(
    String sdp,
  ) = _Offer;
  const factory RTCSignal.candidate(
    RTCIceCandidate candidate,
  ) = _Candidate;

  T when<T>({
    @required T Function(String sdp) answer,
    @required T Function(String sdp) offer,
    @required T Function(RTCIceCandidate candidate) candidate,
  }) {
    final v = this;
    if (v is _Answer) return answer(v.sdp);
    if (v is _Offer) return offer(v.sdp);
    if (v is _Candidate) return candidate(v.candidate);
    throw "";
  }

  T maybeWhen<T>({
    T Function() orElse,
    T Function(String sdp) answer,
    T Function(String sdp) offer,
    T Function(RTCIceCandidate candidate) candidate,
  }) {
    final v = this;
    if (v is _Answer) return answer != null ? answer(v.sdp) : orElse?.call();
    if (v is _Offer) return offer != null ? offer(v.sdp) : orElse?.call();
    if (v is _Candidate)
      return candidate != null ? candidate(v.candidate) : orElse?.call();
    throw "";
  }

  T map<T>({
    @required T Function(_Answer value) answer,
    @required T Function(_Offer value) offer,
    @required T Function(_Candidate value) candidate,
  }) {
    final v = this;
    if (v is _Answer) return answer(v);
    if (v is _Offer) return offer(v);
    if (v is _Candidate) return candidate(v);
    throw "";
  }

  T maybeMap<T>({
    T Function() orElse,
    T Function(_Answer value) answer,
    T Function(_Offer value) offer,
    T Function(_Candidate value) candidate,
  }) {
    final v = this;
    if (v is _Answer) return answer != null ? answer(v) : orElse?.call();
    if (v is _Offer) return offer != null ? offer(v) : orElse?.call();
    if (v is _Candidate)
      return candidate != null ? candidate(v) : orElse?.call();
    throw "";
  }

  static RTCSignal fromJson(Map<String, dynamic> map) {
    switch (map["runtimeType"] as String) {
      case '_Answer':
        return _Answer.fromJson(map);
      case '_Offer':
        return _Offer.fromJson(map);
      case '_Candidate':
        return _Candidate.fromJson(map);
      default:
        return null;
    }
  }

  Map<String, dynamic> toJson();
}

class _Answer extends RTCSignal {
  final String sdp;

  const _Answer(
    this.sdp,
  ) : super._();

  static _Answer fromJson(Map<String, dynamic> map) {
    return _Answer(
      map['sdp'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "runtimeType": "_Answer",
      "sdp": sdp,
    };
  }
}

class _Offer extends RTCSignal {
  final String sdp;

  const _Offer(
    this.sdp,
  ) : super._();

  static _Offer fromJson(Map<String, dynamic> map) {
    return _Offer(
      map['sdp'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "runtimeType": "_Offer",
      "sdp": sdp,
    };
  }
}

class _Candidate extends RTCSignal {
  final RTCIceCandidate candidate;

  const _Candidate(
    this.candidate,
  ) : super._();

  static _Candidate fromJson(Map<String, dynamic> map) {
    final _m = map['candidate'] as Map<String, dynamic>;
    return _Candidate(
      RTCIceCandidate(
        _m['candidate'] as String,
        _m['sdpMid'] as String,
        _m['sdpMlineIndex'] as int,
      ),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "runtimeType": "_Candidate",
      "candidate": candidate.toMap(),
    };
  }
}
