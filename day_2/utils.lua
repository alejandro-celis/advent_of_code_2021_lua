local moduleName = ...
local M = {}
_G[moduleName] = M

---------- Module functions --------------------
function M.split_string(s, delimiter)
    local result = {}
    for match in (s .. delimiter):gmatch("(.-)" .. delimiter) do
        table.insert(result, match)
    end
    return result
end

return M
