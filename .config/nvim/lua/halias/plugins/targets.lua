local targets_setup, targets = pcall(require, "targets")
if not targets_setup then
	return
end

targets.setup()
