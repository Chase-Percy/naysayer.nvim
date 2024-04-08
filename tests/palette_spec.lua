local function reload()
	for name, _ in pairs(package.loaded) do
		if name:match "^naysayer" then package.loaded[name] = nil end
	end
	vim.g.naysayer_flavour = nil
	vim.cmd [[highlight clear]]
end

-- TODO: Move this to setup_spec
describe("get palette", function()
	before_each(function() reload() end)
	it("before setup", function()
		assert.equals(pcall(function() require("naysayer.palettes").get_palette() end), true)
	end)
	it("after setup", function()
		require("naysayer").setup()
		assert.equals(pcall(function() require("naysayer.palettes").get_palette() end), true)
	end)
end)
