require('bufferline').setup {
	options = {


		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level, diagnostics_dict)
			return "("..count..")"
		end,

	}
}
