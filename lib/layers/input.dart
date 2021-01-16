import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget, useMemoized;
import 'package:neural_graph/diagram/connection.dart';
import 'package:neural_graph/fields/button_select_field.dart';
import 'package:neural_graph/fields/form.dart';
import 'package:neural_graph/fields/shape_field.dart';
import 'package:neural_graph/layers/layers.dart';
import 'package:neural_graph/diagram/node.dart';

part 'input.g.dart';

class Input = _Input with _$Input;

abstract class _Input extends Layer with Store {
  _Input(Node<Layer> node)
      : this.outPort = Port(node),
        super(node);

  static const String _layerId = "Input";
  @override
  String get layerId => _layerId;

  @observable
  DType dtype = DType.float32;

  @observable
  List<int> shape = [32];

  @computed
  Tensor get tensor => Tensor(dtype, shape);

  @override
  Tensor output(Tensor _input) => tensor;

  @override
  bool isValidInput(Tensor _input) => false;

  final Port<Layer> outPort;

  @override
  Iterable<Port<Layer>> get ports => [outPort];

  @override
  Widget form([Key key]) => DefaultForm(
        key: key,
        child: InputForm(state: this as Input),
      );
}

class InputForm extends HookWidget {
  const InputForm({Key key, @required this.state}) : super(key: key);
  final Input state;
  @override
  Widget build(BuildContext ctx) {
    final shapeField = useMemoized(
      () => FormFieldValue<List<int>>(
        get: () => state.shape,
        set: (v) => state.shape = v,
      ),
      [state],
    );

    return DefaultFormTable(
      children: [
        tableRow(
          name: "Data Type",
          description: "The type of data in the tensor",
          field: Observer(builder: (context) {
            return ButtonSelect<DType>(
              options: DType.values,
              selected: state.dtype,
              asString: enumToString,
              onChange: (v) => state.dtype = v,
            );
          }),
        ),
        tableRow(
          name: "Shape",
          description: "Size of the tensor in each dimension",
          field: ShapeField(
            field: shapeField,
            dimensions: null,
          ),
        ),
      ],
    );
  }
}
