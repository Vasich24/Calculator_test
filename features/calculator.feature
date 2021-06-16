Feature: Calculator
  As a user, I want to use a calculator to calculate two numbers 

Scenario Outline: Сalculating of two numbers <first_num> & <second_num>
    Given I have a calculator
    When I enter <first_num> and <second_num> and choose <math> and press button
    Then the result should be <total>

  Examples:
    | first_num | second_num | total | math |
    | 5 | 5 | 10 | + |
    | 75 | 25 | 100 | + |
    | -5 | -2 | -7 | + |
    | 2 | -10 | -8 | + |
    | 5 | 8 | -3 | - |
    | 5 | -5 | 0 | + |
    | 2 | 1 | 1 | - |
    | -12 | -1 | -13 | - |
    | -2 | 3 | -5 | - |
    | 10 | 5 | 50 | * |
    | 2 | -9 | -18 | * |
    | 2 | 0 | 0 | * |
    | 0 | -8 | 0 | * |
    | 18 | 2 | 9 | / |
    | -20 | -2 | 10 | / |
    | -49 | 7 | -7 | / |
    | 25 | 10 | 5 | % |
    | -25 | 10 | -5 | % |
    | 20 | 4 | 0 | % |
    | 5 |  | NaN | + |
    |  |  | NaN | + |    
    | text |  | NaN | + |    
    | text | 7 | NaN | + |
    | text | text | NaN | + |