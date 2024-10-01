var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]

print(type(of: list))

func fizzBuzz(numbers: [Int]){
    for number in numbers{
        if (number % 3 == 0) && (number % 5 == 0) {
            print("\(number) - FizzBuzz (3 and 5)")
        } else if (number % 3 == 0) {
            print("\(number) - Fizz (3) ")
        } else if (number % 5 == 0) {
            print("\(number) - Buzz (5)")
        } else {
            print(number)
        }
    }
}

fizzBuzz(numbers: list)
