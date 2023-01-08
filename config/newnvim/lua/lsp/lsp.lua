require("mason").setup({
	PATH =  "prepend",
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

local lspconfig = require("lspconfig")
local mason_lsconfig = require("mason-lspconfig")
local servers = {
	jsonls = require("lsp.config.json"),
	html = require("lsp.config.html"),
}

local server_names = {}

for name,_ in pairs(servers) do
	server_names[name] = name;
end

mason_lsconfig.setup({
	automatic_installation = true
})

for name, config in pairs(servers) do
  if config ~= nil and type(config) == "table" then
    -- 自定义初始化配置文件必须实现on_setup 方法
    config.on_setup(lspconfig[name])
  else
    -- 使用默认参数
    lspconfig[name].setup({})
  end
end


