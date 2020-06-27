## Binary Converter

A simple ruby script that converts integers into their binary expression.

### Running

To play with the code clone this repo, navigate to the route directory then:

```
pry -r './lib/binary_converter.rb'
number = BinaryConverter.new
number.convert(integer: 10)
```
You can use any REPL to interact with the code. I am using PRY.

### Approach

I created a class whose instances could abstract the process of converting numbers into binary. I chose to TDD my solution starting with the simplest examples for 8 bit numbers:

| Input       | Output                  |
|:------------- |:-------------         |
| 1 | 00000001 |
| 2  | 00000010 |
| 3 | 00000011 |
| 10 | 00001010 |
| 11 | 00001011 |
| 100 | 1100100 |

These examples formed the outline for my early tests.

To run the tests clone and enter the route of the project and run:
```
rspec
```

### Design decisions

Part of the challenge here was to attempt to implement more 'clean code' practices from https://github.com/uohzxela/clean-code-ruby (a refactored  version of Robert C. Martin's book Clean Code, originally for JavaScript). Therefore, I tried to think carefully about my variable names, dependency injection, DRY principles and SRPs.

### Known issues

Currently the converter can only convert numbers that take up to 8 bits in memory. Anything over 255 will therefore not be able to be converted until the code is adapted. This is next on the list of features to implement.
