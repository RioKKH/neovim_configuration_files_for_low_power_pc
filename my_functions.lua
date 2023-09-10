local api = vim.api

function UppercaseCurrentLine()
	local line = api.nvim_get_current_line()
	local uppercased_line = string.upper(line)
	api.nvim_set_current_line(uppercased_line)
end
