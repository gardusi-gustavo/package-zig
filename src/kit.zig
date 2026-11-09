const std = @import("std");

pub fn greet(allocator: std.mem.Allocator, name: []const u8) ![]u8 {
    return std.fmt.allocPrint(allocator, "Hello, {s}", .{name});
}

test "greet" {
    const allocator = std.testing.allocator;
    const value = try greet(allocator, "Zig");
    defer allocator.free(value);
    try std.testing.expectEqualStrings("Hello, Zig", value);
}
