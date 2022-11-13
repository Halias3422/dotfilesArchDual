local svart_setup, svart = pcall(require, "svart")
if not svart_setup then
	return
end

svart.configure({
	search_update_register = false,
	search_multi_window = false,
})
