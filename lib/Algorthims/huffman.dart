class node {
  String? symbol;
  node? left, right;
  
  node({this.symbol, this.left, this.right});
}

String decodeHuffman(String encoded, node root) {
  if (encoded.isEmpty) return '';

  String decoded = '';
  node currentNode = root;

  for (int i = 0; i < encoded.length; i++) {
    if (encoded[i] == '0') {
      currentNode = currentNode.left!;
    } else if (encoded[i] == '1') {
      currentNode = currentNode.right!;
    } else {
      throw 'the encoded must be 0, 1';
    }

    if (currentNode.symbol != null) {
      decoded += currentNode.symbol!;
      currentNode = root;
    }
  }

  return decoded;
}

void main() {

  node root = node(
    left: node(
      left: node(symbol: 'A'),
      right: node(symbol: 'E')
    ),
    right: node(symbol: 'C')
  );

  try {
    String encoded = "0001";
    String decoded = decodeHuffman(encoded, root);
    print(decoded);
  } catch (e) {
    print("Error: $e");
  }
}
