import 'package:flutter/material.dart';
import 'package:neural_graph/diagram/graph.dart';
import 'package:neural_graph/layers/input.dart';
import 'package:neural_graph/layers/layers.dart';
import 'package:neural_graph/layers/output_layer.dart';
import 'package:uuid/uuid.dart';

class NeuralNetwork {
  final String key;
  static final _uuid = Uuid();
  factory NeuralNetwork({@required Graph<Layer> graph}) {
    return NeuralNetwork._(_uuid.v4(), graph);
  }

  NeuralNetwork._(this.key, this.graph);

  final Graph<Layer> graph;

  String name;
  String optimizer;

  Iterable<Input> get inputs =>
      graph.nodes.values.map((node) => node.data).whereType<Input>();
  Iterable<OutputLayer> get outputs =>
      graph.nodes.values.map((node) => node.data).whereType<OutputLayer>();
}
