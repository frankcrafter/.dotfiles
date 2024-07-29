local bufferline = require("bufferline")

bufferline.setup({
	options = {
		mode = "buffers",
		offsets = {
			{ filetype = "NvimTree", text = "File Explorer", text_align = "center" },
		},
		show_buffer_close_icons = false,
		show_close_icon = false,
		separator_style = "thick",
		buffer_close_icon = "",
	},
})
