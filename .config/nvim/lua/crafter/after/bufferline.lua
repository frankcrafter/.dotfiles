local bufferline = require("bufferline")

bufferline.setup({
	options = {
		mode = "buffers",
		offsets = {
			{ filetype = "NvimTree", text = "File Explorer", text_align = "center" },
		},
		show_buffer_close_icons = false,
		show_close_icon = false,
		separator_style = "thin",
		buffer_close_icon = "",
	},
})

-- Switch buffer
vim.keymap.set("n", "<Tab>", "<Cmd>:BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-Tab>", "<Cmd>:BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<S-c>", "<Cmd>:bdelete!<CR>")
