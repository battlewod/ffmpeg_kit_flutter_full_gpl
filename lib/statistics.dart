/*
 * Copyright (c) 2019-2021 Taner Sener
 *
 * This file is part of FFmpegKit.
 *
 * FFmpegKit is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * FFmpegKit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with FFmpegKit.  If not, see <http://www.gnu.org/licenses/>.
 */

/// Statistics entry for an FFmpeg execute session.
class Statistics {
  int _sessionId;
  int _videoFrameNumber;
  double _videoFps;
  double _videoQuality;
  int _size;
  int _time;
  double _bitrate;
  double _speed;

  Statistics(this._sessionId, this._videoFrameNumber, this._videoFps, this._videoQuality, this._size, this._time, this._bitrate, this._speed);

  factory Statistics.fromMap(Map<dynamic, dynamic> map) => Statistics(
    _parseInt(map['sessionId']),
    _parseInt(map['videoFrameNumber']),
    _parseDouble(map['videoFps']),
    _parseDouble(map['videoQuality']),
    _parseInt(map['size']),
    _parseInt(map['time']),
    _parseDouble(map['bitrate']),
    _parseDouble(map['speed']),
  );

  // Helpers de parsing sécurisés
  static int _parseInt(dynamic value) {
    if (value == null) return 0;
    if (value is int) return value;
    if (value is double) return value.round();
    return int.tryParse(value.toString()) ?? 0;
  }

  static double _parseDouble(dynamic value) {
    if (value == null) return 0.0;
    if (value is double) return value;
    if (value is int) return value.toDouble();
    return double.tryParse(value.toString()) ?? 0.0;
  }

  int getSessionId() => this._sessionId;

  void setSessionId(int sessionId) {
    this._sessionId = sessionId;
  }

  int getVideoFrameNumber() => this._videoFrameNumber;

  void setVideoFrameNumber(int videoFrameNumber) {
    this._videoFrameNumber = videoFrameNumber;
  }

  double getVideoFps() => this._videoFps;

  void setVideoFps(double videoFps) {
    this._videoFps = videoFps;
  }

  double getVideoQuality() => this._videoQuality;

  void setVideoQuality(double videoQuality) {
    this._videoQuality = videoQuality;
  }

  int getSize() => this._size;

  void setSize(int size) {
    this._size = size;
  }

  int getTime() => this._time;

  void setTime(int time) {
    this._time = time;
  }

  double getBitrate() => this._bitrate;

  void setBitrate(double bitrate) {
    this._bitrate = bitrate;
  }

  double getSpeed() => this._speed;

  void setSpeed(double speed) {
    this._speed = speed;
  }
}
