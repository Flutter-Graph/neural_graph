// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Signal$MutationRoot with EquatableMixin {
  Signal$MutationRoot();

  factory Signal$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$Signal$MutationRootFromJson(json);

  bool signal;

  @override
  List<Object> get props => [signal];
  Map<String, dynamic> toJson() => _$Signal$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateSession$MutationRoot$UserSession with EquatableMixin {
  CreateSession$MutationRoot$UserSession();

  factory CreateSession$MutationRoot$UserSession.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSession$MutationRoot$UserSessionFromJson(json);

  String userId;

  String token;

  @override
  List<Object> get props => [userId, token];
  Map<String, dynamic> toJson() =>
      _$CreateSession$MutationRoot$UserSessionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateSession$MutationRoot with EquatableMixin {
  CreateSession$MutationRoot();

  factory CreateSession$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$CreateSession$MutationRootFromJson(json);

  CreateSession$MutationRoot$UserSession createSessionId;

  @override
  List<Object> get props => [createSessionId];
  Map<String, dynamic> toJson() => _$CreateSession$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Signals$SubscriptionRoot$Signal with EquatableMixin {
  Signals$SubscriptionRoot$Signal();

  factory Signals$SubscriptionRoot$Signal.fromJson(Map<String, dynamic> json) =>
      _$Signals$SubscriptionRoot$SignalFromJson(json);

  String payload;

  String peerId;

  @override
  List<Object> get props => [payload, peerId];
  Map<String, dynamic> toJson() =>
      _$Signals$SubscriptionRoot$SignalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Signals$SubscriptionRoot with EquatableMixin {
  Signals$SubscriptionRoot();

  factory Signals$SubscriptionRoot.fromJson(Map<String, dynamic> json) =>
      _$Signals$SubscriptionRootFromJson(json);

  Signals$SubscriptionRoot$Signal signals;

  @override
  List<Object> get props => [signals];
  Map<String, dynamic> toJson() => _$Signals$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Room$SubscriptionRoot$Room with EquatableMixin {
  Room$SubscriptionRoot$Room();

  factory Room$SubscriptionRoot$Room.fromJson(Map<String, dynamic> json) =>
      _$Room$SubscriptionRoot$RoomFromJson(json);

  List<String> users;

  @override
  List<Object> get props => [users];
  Map<String, dynamic> toJson() => _$Room$SubscriptionRoot$RoomToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Room$SubscriptionRoot with EquatableMixin {
  Room$SubscriptionRoot();

  factory Room$SubscriptionRoot.fromJson(Map<String, dynamic> json) =>
      _$Room$SubscriptionRootFromJson(json);

  Room$SubscriptionRoot$Room room;

  @override
  List<Object> get props => [room];
  Map<String, dynamic> toJson() => _$Room$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SignalArguments extends JsonSerializable with EquatableMixin {
  SignalArguments({@required this.peerId, @required this.signal});

  @override
  factory SignalArguments.fromJson(Map<String, dynamic> json) =>
      _$SignalArgumentsFromJson(json);

  final String peerId;

  final String signal;

  @override
  List<Object> get props => [peerId, signal];
  @override
  Map<String, dynamic> toJson() => _$SignalArgumentsToJson(this);
}

class SignalMutation
    extends GraphQLQuery<Signal$MutationRoot, SignalArguments> {
  SignalMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'Signal'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'peerId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'signal')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'signal'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'peerId'),
                    value: VariableNode(name: NameNode(value: 'peerId'))),
                ArgumentNode(
                    name: NameNode(value: 'signal'),
                    value: VariableNode(name: NameNode(value: 'signal')))
              ],
              directives: [],
              selectionSet: null)
        ])),
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'CreateSession'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'createSessionId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'userId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'token'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ])),
    OperationDefinitionNode(
        type: OperationType.subscription,
        name: NameNode(value: 'Signals'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'signals'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'payload'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'peerId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ])),
    OperationDefinitionNode(
        type: OperationType.subscription,
        name: NameNode(value: 'Room'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'roomId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'room'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'roomId'),
                    value: VariableNode(name: NameNode(value: 'roomId')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'users'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'Signal';

  @override
  final SignalArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Signal$MutationRoot parse(Map<String, dynamic> json) =>
      Signal$MutationRoot.fromJson(json);
}

class CreateSessionMutation
    extends GraphQLQuery<CreateSession$MutationRoot, JsonSerializable> {
  CreateSessionMutation();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'Signal'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'peerId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'signal')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'signal'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'peerId'),
                    value: VariableNode(name: NameNode(value: 'peerId'))),
                ArgumentNode(
                    name: NameNode(value: 'signal'),
                    value: VariableNode(name: NameNode(value: 'signal')))
              ],
              directives: [],
              selectionSet: null)
        ])),
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'CreateSession'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'createSessionId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'userId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'token'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ])),
    OperationDefinitionNode(
        type: OperationType.subscription,
        name: NameNode(value: 'Signals'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'signals'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'payload'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'peerId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ])),
    OperationDefinitionNode(
        type: OperationType.subscription,
        name: NameNode(value: 'Room'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'roomId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'room'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'roomId'),
                    value: VariableNode(name: NameNode(value: 'roomId')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'users'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'CreateSession';

  @override
  List<Object> get props => [document, operationName];
  @override
  CreateSession$MutationRoot parse(Map<String, dynamic> json) =>
      CreateSession$MutationRoot.fromJson(json);
}

class SignalsSubscription
    extends GraphQLQuery<Signals$SubscriptionRoot, JsonSerializable> {
  SignalsSubscription();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'Signal'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'peerId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'signal')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'signal'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'peerId'),
                    value: VariableNode(name: NameNode(value: 'peerId'))),
                ArgumentNode(
                    name: NameNode(value: 'signal'),
                    value: VariableNode(name: NameNode(value: 'signal')))
              ],
              directives: [],
              selectionSet: null)
        ])),
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'CreateSession'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'createSessionId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'userId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'token'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ])),
    OperationDefinitionNode(
        type: OperationType.subscription,
        name: NameNode(value: 'Signals'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'signals'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'payload'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'peerId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ])),
    OperationDefinitionNode(
        type: OperationType.subscription,
        name: NameNode(value: 'Room'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'roomId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'room'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'roomId'),
                    value: VariableNode(name: NameNode(value: 'roomId')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'users'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'Signals';

  @override
  List<Object> get props => [document, operationName];
  @override
  Signals$SubscriptionRoot parse(Map<String, dynamic> json) =>
      Signals$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RoomArguments extends JsonSerializable with EquatableMixin {
  RoomArguments({@required this.roomId});

  @override
  factory RoomArguments.fromJson(Map<String, dynamic> json) =>
      _$RoomArgumentsFromJson(json);

  final String roomId;

  @override
  List<Object> get props => [roomId];
  @override
  Map<String, dynamic> toJson() => _$RoomArgumentsToJson(this);
}

class RoomSubscription
    extends GraphQLQuery<Room$SubscriptionRoot, RoomArguments> {
  RoomSubscription({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'Signal'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'peerId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'signal')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'signal'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'peerId'),
                    value: VariableNode(name: NameNode(value: 'peerId'))),
                ArgumentNode(
                    name: NameNode(value: 'signal'),
                    value: VariableNode(name: NameNode(value: 'signal')))
              ],
              directives: [],
              selectionSet: null)
        ])),
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'CreateSession'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'createSessionId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'userId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'token'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ])),
    OperationDefinitionNode(
        type: OperationType.subscription,
        name: NameNode(value: 'Signals'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'signals'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'payload'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'peerId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ])),
    OperationDefinitionNode(
        type: OperationType.subscription,
        name: NameNode(value: 'Room'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'roomId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'room'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'roomId'),
                    value: VariableNode(name: NameNode(value: 'roomId')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'users'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'Room';

  @override
  final RoomArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Room$SubscriptionRoot parse(Map<String, dynamic> json) =>
      Room$SubscriptionRoot.fromJson(json);
}
