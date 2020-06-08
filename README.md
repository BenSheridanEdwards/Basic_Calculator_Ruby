# Basic Calculator Challenge - Ruby

## Description

A basic calculator that does addition, subtraction, multiplication, and division of sums.

This project was built using test-driven development (TDD) with Ruby & RSpec.

## Specification

### Core Requirements

To help students read academic papers that involve math equations, write a program the takes in a string of a sum and returns the original sum string along with the correct answer.

Example 1 (Addition): 
```
Input = "1 + 1"
Output = ["1 + 1", 2]
```
Example 2 (Subtraction):
```
Input = "10 - 5"
Output = ["10 - 5", 5]
```
Example 3 (Multiplication):
```
Input = "5 * 5"
Output = ["5 * 5", 25]
```
Also works with the traditional times 'x' sign:
```
Input = "5 x 5"
Output = ["5 x 5", 25]
```

Example 4 (Division): 
```
Input = "25 / 5"
Output = ["25 / 5", 5]
```

### Edge Cases

- An error is raised when a user tries to input the name of a number rather than the integer, for example "one + one".
- An error is raised when a user tries to use an invalid operator or one that is not currently supported, for example "1 = 1" or "10 % 2".
- An error is raised when a user tries to divide by zero.

## Code

![Ruby Code 1](https://github.com/BenSheridanEdwards/Basic_Calculator_Ruby/blob/master/images/Ruby%20Code/CalculatorCode-1.png)

![Ruby Code 2](https://github.com/BenSheridanEdwards/Basic_Calculator_Ruby/blob/master/images/Ruby%20Code/CalculatorCode-2.png)

## Tests

![RSpec Tests 1](https://github.com/BenSheridanEdwards/Basic_Calculator_Ruby/blob/master/images/RSpec%20Tests/CalculatorSpec-1.png)

![RSpec Tests 2](https://github.com/BenSheridanEdwards/Basic_Calculator_Ruby/blob/master/images/RSpec%20Tests/CalculatorSpec-2.png)
