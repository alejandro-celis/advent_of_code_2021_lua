local file_path = "input.txt"
local arr = {}
local total_lines = 0
local result = 0

local file = io.open(file_path, "r");
for line in file:lines() do
    table.insert(arr, tonumber(line))
    total_lines = total_lines + 1
end

for i = 1, total_lines - 3 do
    _sum_first = arr[i] + arr[i + 1] + arr[i + 2]
    _sum_second = arr[i + 1] + arr[i + 2] + arr[i + 3]
    if _sum_second > _sum_first then
        result = result + 1
    end
end

print(result)
