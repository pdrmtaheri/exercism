const std = @import("std");
const mem = std.mem;

pub fn rotate(allocator: mem.Allocator, text: []const u8, shiftKey: u5) mem.Allocator.Error![]u8 {
    const rotated = try allocator.alloc(u8, text.len);

    for (text, 0..) |char, i| {
        if (char >= 'a' and char <= 'z') {
            rotated[i] = 'a' + (char - 'a' + shiftKey) % 26;
        } else if (char >= 'A' and char <= 'Z') {
            rotated[i] = 'A' + (char - 'A' + shiftKey) % 26;
        } else {
            rotated[i] = char;
        }
    }

    return rotated;
}
