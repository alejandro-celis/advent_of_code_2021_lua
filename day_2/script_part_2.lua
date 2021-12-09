local utils = require 'utils'

local file_path = "input.txt"
local horizontal, depth, aim = 0, 0, 0
local FORWARD, UP, DOWN = "forward", "up", "down"

for line in io.lines(file_path) do
    local splitted_string = utils.split_string(line, " ")
    local direction, size = splitted_string[1], splitted_string[2]

    if direction == FORWARD then
        horizontal = horizontal + size
        depth = depth + aim * size
    elseif direction == UP then
        aim = aim - size
    elseif direction == DOWN then
        aim = aim + size
    end
end

print(depth * horizontal)