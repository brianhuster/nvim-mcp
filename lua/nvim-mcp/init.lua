local M = {}

local file_path = debug.getinfo(1, "S").source:sub(2)
local plugin_dir = vim.fs.dirname(vim.fs.dirname(file_path))
local server_path = vim.fs.joinpath(plugin_dir, "bin", "nvim-mcp")

function M.get_path_to_server()
	return server_path
end

return M
