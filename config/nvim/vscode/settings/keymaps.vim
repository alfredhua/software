{
	"git.confirmSync": false,
	"editor.lineNumbers":"relative",
	"workbench.startupEditor": "none",
	"workbench.editor.untitled.hint": "hidden",
	"workbench.colorCustomizations": {
		"statusBar.background": "#005f5f",
		"statusBar.noFolderBackground": "#005f5f",
		"statusBar.debuggingBackground": "#005f5f"
	},
	// neovim
	"vim.enableNeovim": true,
	"vim.neovimConfigPath": "/Users/guozhenhua7/software/soft/vim/init.vim",
	"vim.neovimPath": "nvim",
	"vim.neovimUseConfigFile": true,
	"vim.vimrc.enable": true,
	"vim.vimrc.path": "~/.config/nvim/init.vim",
	"settingsSync.ignoredSettings": [
		"-vim.neovimPath"
	],
	"vim.leader": "<space>",
	"vim.handleKeys": {
		"<C-a>": false,
		"<C-j>": false,
	},
	//  vim插件
	"vim.sneak":true,
	"vim.easymotion": true,
	"vim.replaceWithRegister": true,
	// vim状态栏修改
	"vim.statusBarColorControl": true,
	"vim.incsearch": true,
	"vim.useSystemClipboard": true,
	"vim.useCtrlKeys": true,
	"vim.hlsearch": true,
	"vim.camelCaseMotion.enable": true,
	"vim.insertModeKeyBindings": [
		{
		"before": ["j", "j"],
		"after": ["<Esc>"]
		}
	],
	"vim.normalModeKeyBindingsNonRecursive": [
		{
			"before": ["<Space>","<CR>"],
			"commands": [":nohl"]
		},
		{
			"before": ["<C-k>"],
			"commands": [":tabp"]
		},{
			"before": ["<C-j>"],
			"commands": [":tabn"]
		},{
			"before":["<C-q>"],
			"commands":[":q"]
		}
	],

}
