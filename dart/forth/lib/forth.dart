class Forth {
  List<int> stack = [];
  Map<String, Function> operations = {
    '+': () {
      if (stack.length < 2)
        throw ArgumentError('Not enough items on the stack for addition.');
      var b = stack.removeLast();
      var a = stack.removeLast();
      stack.add(a + b);
    },
    '-': () {
      if (stack.length < 2)
        throw ArgumentError('Not enough items on the stack for subtraction.');
      var b = stack.removeLast();
      var a = stack.removeLast();
      stack.add(a - b);
    },
    '*': () {
      if (stack.length < 2)
        throw ArgumentError(
            'Not enough items on the stack for multiplication.');
      var b = stack.removeLast();
      var a = stack.removeLast();
      stack.add(a * b);
    },
    '/': () {
      if (stack.length < 2)
        throw ArgumentError('Not enough items on the stack for division.');
      var b = stack.removeLast();
      var a = stack.removeLast();
      if (b == 0) throw ArgumentError('Division by zero.');
      stack.add(a ~/ b);
    },
    'DUP': () {
      if (stack.isEmpty)
        throw ArgumentError('Stack is empty, nothing to duplicate.');
      var a = stack.last;
      stack.add(a);
    },
    'DROP': () {
      if (stack.isEmpty)
        throw ArgumentError('Stack is empty, nothing to drop.');
      stack.removeLast();
    },
    'SWAP': () {
      if (stack.length < 2)
        throw ArgumentError('Not enough items on the stack for swapping.');
      var b = stack.removeLast();
      var a = stack.removeLast();
      stack.addAll([b, a]);
    },
    'OVER': () {
      if (stack.length < 2)
        throw ArgumentError('Not enough items on the stack for over.');
      var b = stack[stack.length - 2];
      stack.add(b);
    }
  };

  void evaluate(String input) {
    var words = input.split(' ');
    for (var word in words) {
      if (operations.containsKey(word.toUpperCase())) {
        operations[word.toUpperCase()]!();
      } else {
        try {
          var number = int.parse(word);
          stack.add(number);
        } catch (e) {
          throw ArgumentError('Invalid operation or number: $word');
        }
      }
    }
  }

  int getStack(int index) {
    if (index >= stack.length) throw ArgumentError('Stack underflow.');
    return stack[index];
  }
}

void main() {
  var forth = Forth();
  forth.evaluate('1 2 +');
  print(forth.getStack(0)); // prints 3
  forth.evaluate('3 4 -');
  print(forth.getStack(0)); // prints -1
  forth.evaluate('2 DUP *');
  print(forth.getStack(0)); // prints 4
  forth.evaluate('10 2 /');
  print(forth.getStack(0)); // prints 5
  forth.evaluate('5 SWAP -');
  print(forth.getStack(0)); // prints -3
  forth.evaluate('6 DROP');
  print(forth.getStack(0)); // prints 5
  forth.evaluate('3 4 5 OVER * +');
  print(forth.getStack(0)); // prints 23
}
