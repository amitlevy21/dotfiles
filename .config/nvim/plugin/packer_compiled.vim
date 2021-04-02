" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/amit/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/amit/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/amit/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/amit/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/amit/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\6\0\30\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0025\3\v\0004\4\3\0005\5\n\0>\5\1\4=\4\f\0034\4\3\0005\5\r\0>\5\1\4=\4\14\0034\4\3\0005\5\15\0>\5\1\4=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\3=\3\23\0025\3\24\0004\4\0\0=\4\f\0034\4\0\0=\4\14\0035\4\25\0=\4\16\0035\4\26\0=\4\18\0034\4\0\0=\4\20\0034\4\0\0=\4\22\3=\3\27\0025\3\28\0=\3\29\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\bfzf\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\1\0\vbranch\ticon\b\14lualine_a\1\0\0\1\2\1\0\tmode\nupper\2\foptions\1\0\0\25component_separators\1\3\0\0\b\b\23section_separators\1\3\0\0\b\b\1\0\2\ntheme\fgruvbox\18icons_enabled\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  neogit = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/nvim-jdtls"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["python-snippets"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/python-snippets"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/vim-rhubarb"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vscode-go"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/vscode-go"
  },
  ["vscode-javascript"] = {
    loaded = true,
    path = "/home/amit/.local/share/nvim/site/pack/packer/start/vscode-javascript"
  }
}

-- Config for: lualine.nvim
try_loadstring("\27LJ\2\n�\4\0\0\6\0\30\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0025\3\v\0004\4\3\0005\5\n\0>\5\1\4=\4\f\0034\4\3\0005\5\r\0>\5\1\4=\4\14\0034\4\3\0005\5\15\0>\5\1\4=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\3=\3\23\0025\3\24\0004\4\0\0=\4\f\0034\4\0\0=\4\14\0035\4\25\0=\4\16\0035\4\26\0=\4\18\0034\4\0\0=\4\20\0034\4\0\0=\4\22\3=\3\27\0025\3\28\0=\3\29\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\bfzf\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\1\0\vbranch\ticon\b\14lualine_a\1\0\0\1\2\1\0\tmode\nupper\2\foptions\1\0\0\25component_separators\1\3\0\0\b\b\23section_separators\1\3\0\0\b\b\1\0\2\ntheme\fgruvbox\18icons_enabled\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
