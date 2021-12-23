local file_path = "input.txt"
local gamma, epsilon = "", ""
local arr = {}
local j = 1

for line in io.lines(file_path) do
    for i = 1, #line do
        if not arr[i] then
            arr[i] = 0
        end
        arr[i] = arr[i] + line:sub(i, i)
    end
    j = j + 1
end

for i = 1, #arr do
    local binary_rep = math.floor(arr[i] / j + 0.5)
    gamma = gamma .. binary_rep 
    epsilon = epsilon .. (1 - binary_rep)
end

print(tonumber(gamma, 2) * tonumber(epsilon, 2))