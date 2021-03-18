// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Signal$MutationRoot _$Signal$MutationRootFromJson(Map<String, dynamic> json) {
  return Signal$MutationRoot()..signal = json['signal'] as bool;
}

Map<String, dynamic> _$Signal$MutationRootToJson(
        Signal$MutationRoot instance) =>
    <String, dynamic>{
      'signal': instance.signal,
    };

CreateSession$MutationRoot$UserSession
    _$CreateSession$MutationRoot$UserSessionFromJson(
        Map<String, dynamic> json) {
  return CreateSession$MutationRoot$UserSession()
    ..userId = json['userId'] as String
    ..token = json['token'] as String;
}

Map<String, dynamic> _$CreateSession$MutationRoot$UserSessionToJson(
        CreateSession$MutationRoot$UserSession instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'token': instance.token,
    };

CreateSession$MutationRoot _$CreateSession$MutationRootFromJson(
    Map<String, dynamic> json) {
  return CreateSession$MutationRoot()
    ..createSessionId = json['createSessionId'] == null
        ? null
        : CreateSession$MutationRoot$UserSession.fromJson(
            json['createSessionId'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateSession$MutationRootToJson(
        CreateSession$MutationRoot instance) =>
    <String, dynamic>{
      'createSessionId': instance.createSessionId?.toJson(),
    };

Signals$SubscriptionRoot$Signal _$Signals$SubscriptionRoot$SignalFromJson(
    Map<String, dynamic> json) {
  return Signals$SubscriptionRoot$Signal()
    ..payload = json['payload'] as String
    ..peerId = json['peerId'] as String;
}

Map<String, dynamic> _$Signals$SubscriptionRoot$SignalToJson(
        Signals$SubscriptionRoot$Signal instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'peerId': instance.peerId,
    };

Signals$SubscriptionRoot _$Signals$SubscriptionRootFromJson(
    Map<String, dynamic> json) {
  return Signals$SubscriptionRoot()
    ..signals = json['signals'] == null
        ? null
        : Signals$SubscriptionRoot$Signal.fromJson(
            json['signals'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Signals$SubscriptionRootToJson(
        Signals$SubscriptionRoot instance) =>
    <String, dynamic>{
      'signals': instance.signals?.toJson(),
    };

Room$SubscriptionRoot$Room _$Room$SubscriptionRoot$RoomFromJson(
    Map<String, dynamic> json) {
  return Room$SubscriptionRoot$Room()
    ..users = (json['users'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$Room$SubscriptionRoot$RoomToJson(
        Room$SubscriptionRoot$Room instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

Room$SubscriptionRoot _$Room$SubscriptionRootFromJson(
    Map<String, dynamic> json) {
  return Room$SubscriptionRoot()
    ..room = json['room'] == null
        ? null
        : Room$SubscriptionRoot$Room.fromJson(
            json['room'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Room$SubscriptionRootToJson(
        Room$SubscriptionRoot instance) =>
    <String, dynamic>{
      'room': instance.room?.toJson(),
    };

SignalArguments _$SignalArgumentsFromJson(Map<String, dynamic> json) {
  return SignalArguments(
    peerId: json['peerId'] as String,
    signal: json['signal'] as String,
  );
}

Map<String, dynamic> _$SignalArgumentsToJson(SignalArguments instance) =>
    <String, dynamic>{
      'peerId': instance.peerId,
      'signal': instance.signal,
    };

RoomArguments _$RoomArgumentsFromJson(Map<String, dynamic> json) {
  return RoomArguments(
    roomId: json['roomId'] as String,
  );
}

Map<String, dynamic> _$RoomArgumentsToJson(RoomArguments instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
    };
