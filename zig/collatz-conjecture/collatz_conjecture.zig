pub const ComputationError = error{IllegalArgument};

pub fn steps(number: usize) anyerror!usize {
    if (number == 0) {
        return ComputationError.IllegalArgument;
    }
    var num: usize = number;
    var res: usize = 0;
    while (num != 1) {
        res += 1;
        if (num % 2 == 0) {
            num /= 2;
        } else {
            num = num * 3 + 1;
        }
    }
    return res;
}
