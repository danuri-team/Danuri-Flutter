import 'dart:convert';
class FormSchemaToJson {
  List<Map<String, dynamic>> schemaToJson(String schema) {
    schema = schema.replaceAll('\'', '"');
    schema = schema.replaceAll('];', ']');
    schema = schema.replaceAll(' ', '');
    schema = schema.replaceAll('\n', '');
    schema = schema.replaceAll(',}', '}');
    if (schema.contains('},]')) {
      final index1 = schema.lastIndexOf('},]');
      schema =
          '${schema.substring(0, index1 + 1)}${schema.substring(index1 + 2)}';
    }
    final List<dynamic> decoded = jsonDecode(schema);
    final List<Map<String, dynamic>> jsonSchema =
        decoded.cast<Map<String, dynamic>>();

    return jsonSchema;
  }
}
