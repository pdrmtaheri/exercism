pub fn squareOfSum(number: usize) usize {
    return number * number * (number + 1) * (number + 1) / 4;
}

pub fn sumOfSquares(number: usize) usize {
    return number * (number + 1) * (2 * number + 1) / 6;
}

pub fn differenceOfSquares(number: usize) usize {
    return squareOfSum(number) - sumOfSquares(number);
}
