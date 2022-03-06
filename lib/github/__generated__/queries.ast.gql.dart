// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;

const CreateDiscussion = _i1.OperationDefinitionNode(
    type: _i1.OperationType.mutation,
    name: _i1.NameNode(value: 'CreateDiscussion'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'repositoryId')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ID'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'categoryId')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ID'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'title')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'body')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable:
              _i1.VariableNode(name: _i1.NameNode(value: 'clientMutationId')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'createDiscussion'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'input'),
                value: _i1.ObjectValueNode(fields: [
                  _i1.ObjectFieldNode(
                      name: _i1.NameNode(value: 'repositoryId'),
                      value: _i1.VariableNode(
                          name: _i1.NameNode(value: 'repositoryId'))),
                  _i1.ObjectFieldNode(
                      name: _i1.NameNode(value: 'categoryId'),
                      value: _i1.VariableNode(
                          name: _i1.NameNode(value: 'categoryId'))),
                  _i1.ObjectFieldNode(
                      name: _i1.NameNode(value: 'title'),
                      value:
                          _i1.VariableNode(name: _i1.NameNode(value: 'title'))),
                  _i1.ObjectFieldNode(
                      name: _i1.NameNode(value: 'body'),
                      value:
                          _i1.VariableNode(name: _i1.NameNode(value: 'body'))),
                  _i1.ObjectFieldNode(
                      name: _i1.NameNode(value: 'clientMutationId'),
                      value: _i1.VariableNode(
                          name: _i1.NameNode(value: 'clientMutationId')))
                ]))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FieldNode(
                name: _i1.NameNode(value: 'clientMutationId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            _i1.FieldNode(
                name: _i1.NameNode(value: 'discussion'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: _i1.SelectionSetNode(selections: [
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'id'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'url'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null)
                ]))
          ]))
    ]));
const LockDiscussion = _i1.OperationDefinitionNode(
    type: _i1.OperationType.mutation,
    name: _i1.NameNode(value: 'LockDiscussion'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'discussionId')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ID'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable:
              _i1.VariableNode(name: _i1.NameNode(value: 'clientMutationId')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'lockLockable'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'input'),
                value: _i1.ObjectValueNode(fields: [
                  _i1.ObjectFieldNode(
                      name: _i1.NameNode(value: 'lockableId'),
                      value: _i1.VariableNode(
                          name: _i1.NameNode(value: 'discussionId'))),
                  _i1.ObjectFieldNode(
                      name: _i1.NameNode(value: 'clientMutationId'),
                      value: _i1.VariableNode(
                          name: _i1.NameNode(value: 'clientMutationId')))
                ]))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FieldNode(
                name: _i1.NameNode(value: 'lockedRecord'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: _i1.SelectionSetNode(selections: [
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'locked'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null)
                ]))
          ]))
    ]));
const AddDiscussionComment = _i1.OperationDefinitionNode(
    type: _i1.OperationType.mutation,
    name: _i1.NameNode(value: 'AddDiscussionComment'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'discussionId')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ID'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'body')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable:
              _i1.VariableNode(name: _i1.NameNode(value: 'clientMutationId')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'replyToId')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ID'), isNonNull: false),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'addDiscussionComment'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'input'),
                value: _i1.ObjectValueNode(fields: [
                  _i1.ObjectFieldNode(
                      name: _i1.NameNode(value: 'discussionId'),
                      value: _i1.VariableNode(
                          name: _i1.NameNode(value: 'discussionId'))),
                  _i1.ObjectFieldNode(
                      name: _i1.NameNode(value: 'body'),
                      value:
                          _i1.VariableNode(name: _i1.NameNode(value: 'body'))),
                  _i1.ObjectFieldNode(
                      name: _i1.NameNode(value: 'clientMutationId'),
                      value: _i1.VariableNode(
                          name: _i1.NameNode(value: 'clientMutationId'))),
                  _i1.ObjectFieldNode(
                      name: _i1.NameNode(value: 'replyToId'),
                      value: _i1.VariableNode(
                          name: _i1.NameNode(value: 'replyToId')))
                ]))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FieldNode(
                name: _i1.NameNode(value: 'clientMutationId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            _i1.FieldNode(
                name: _i1.NameNode(value: 'comment'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: _i1.SelectionSetNode(selections: [
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'id'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null)
                ]))
          ]))
    ]));
const GetRepository = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'GetRepository'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'owner')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'name')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'repository'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'owner'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'owner'))),
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'name'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'name')))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FieldNode(
                name: _i1.NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            _i1.FieldNode(
                name: _i1.NameNode(value: 'discussionCategories'),
                alias: null,
                arguments: [
                  _i1.ArgumentNode(
                      name: _i1.NameNode(value: 'first'),
                      value: _i1.IntValueNode(value: '10'))
                ],
                directives: [],
                selectionSet: _i1.SelectionSetNode(selections: [
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'nodes'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: _i1.SelectionSetNode(selections: [
                        _i1.FieldNode(
                            name: _i1.NameNode(value: 'id'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null),
                        _i1.FieldNode(
                            name: _i1.NameNode(value: 'name'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null)
                      ]))
                ]))
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [
  CreateDiscussion,
  LockDiscussion,
  AddDiscussionComment,
  GetRepository
]);
