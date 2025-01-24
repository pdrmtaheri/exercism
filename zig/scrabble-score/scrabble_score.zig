pub fn score(s: []const u8) u32 {
    var sum: u32 = 0;
    const scores = [26]u8{ 1, 3, 3, 2, 1, 4, 2, 4, 1, 8, 5, 1, 3, 1, 1, 3, 10, 1, 1, 1, 1, 4, 4, 8, 4, 10 };
    for (s) |c| {
        if (c >= 'a' and c <= 'z') {
            sum += scores[c - 'a'];
        } else if (c >= 'A' and c <= 'Z') {
            sum += scores[c - 'A'];
        }
    }
    return sum;
}
