local function reload()
	for name, _ in pairs(package.loaded) do
		if name:match "^naysayer" then package.loaded[name] = nil end
	end
	vim.g.naysayer_flavour = nil
	vim.cmd [[highlight clear]]
end

describe("set background to", function()
	before_each(function()
		reload()
		vim.cmd.colorscheme "naysayer"
	end)
	it("light", function()
		vim.o.background = "light"
		assert.equals("naysayer-latte", vim.g.colors_name)
	end)
	it("dark", function()
		vim.o.background = "dark"
		assert.equals("naysayer-mocha", vim.g.colors_name)
	end)
end)

describe("respect vim.o.background =", function()
	before_each(function() reload() end)
	it("light", function()
		vim.o.background = "light"
		vim.cmd.colorscheme "naysayer"
		assert.equals("naysayer-latte", vim.g.colors_name)
	end)
	it("dark", function()
		vim.o.background = "dark"
		vim.cmd.colorscheme "naysayer"
		assert.equals("naysayer-mocha", vim.g.colors_name)
	end)
end)

describe("change flavour to", function()
	before_each(function() reload() end)
	it("latte", function()
		vim.cmd.colorscheme "naysayer-latte"
		assert.equals("naysayer-latte", vim.g.colors_name)
	end)
	it("frappe", function()
		vim.cmd.colorscheme "naysayer-frappe"
		assert.equals("naysayer-frappe", vim.g.colors_name)
	end)
	it("macchiato", function()
		vim.cmd.colorscheme "naysayer-macchiato"
		assert.equals("naysayer-macchiato", vim.g.colors_name)
	end)
	it("mocha", function()
		vim.cmd.colorscheme "naysayer-mocha"
		assert.equals("naysayer-mocha", vim.g.colors_name)
	end)
end)

describe("respect setup flavour =", function()
	before_each(function() reload() end)
	it("latte", function()
		require("naysayer").setup { flavour = "latte" }
		vim.cmd.colorscheme "naysayer"
		assert.equals("naysayer-latte", vim.g.colors_name)
	end)
	it("frappe", function()
		require("naysayer").setup { flavour = "frappe" }
		vim.cmd.colorscheme "naysayer"
		assert.equals("naysayer-frappe", vim.g.colors_name)
	end)
	it("macchiato", function()
		require("naysayer").setup { flavour = "macchiato" }
		vim.cmd.colorscheme "naysayer"
		assert.equals("naysayer-macchiato", vim.g.colors_name)
	end)
	it("mocha", function()
		require("naysayer").setup { flavour = "mocha" }
		vim.cmd.colorscheme "naysayer"
		assert.equals("naysayer-mocha", vim.g.colors_name)
	end)
end)

describe("(deprecated) respect vim.g.naysayer_flavour =", function()
	before_each(function() reload() end)
	it("latte", function()
		vim.g.naysayer_flavour = "latte"
		vim.cmd.colorscheme "naysayer"
		assert.equals("naysayer-latte", vim.g.colors_name)
	end)
	it("frappe", function()
		vim.g.naysayer_flavour = "frappe"
		vim.cmd.colorscheme "naysayer"
		assert.equals("naysayer-frappe", vim.g.colors_name)
	end)
	it("macchiato", function()
		vim.g.naysayer_flavour = "macchiato"
		vim.cmd.colorscheme "naysayer"
		assert.equals("naysayer-macchiato", vim.g.colors_name)
	end)
	it("mocha", function()
		vim.g.naysayer_flavour = "mocha"
		vim.cmd.colorscheme "naysayer"
		assert.equals("naysayer-mocha", vim.g.colors_name)
	end)
end)
