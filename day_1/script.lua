local file_path = "input.txt"
local counter = 0
local previous_element = -1

for line in io.lines(file_path) do
    if tonumber(line) > previous_element then
        if previous_element > 0 then
            counter = counter + 1
        end
    end
    previous_element = tonumber(line)
end

print(counter)
