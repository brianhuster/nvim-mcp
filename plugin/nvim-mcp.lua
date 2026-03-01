vim.api.nvim_create_user_command("McpInspect", function(a)
    local args = a.args
    if args == "" then
        args = "nvim -l " .. require("nvim-mcp").get_path_to_server()
    end
	vim.cmd.term("npx @modelcontextprotocol/inspector " ..  args)
end, { nargs = "*", complete = "shellcmdline" })
