{ config, pkgs, ... }:

let
  nightfly-guicolors = pkgs.vimUtils.buildVimPlugin {
    name = "vim-nightfly-colors";
    src = builtins.fetchGit {
      url = "https://github.com/bluz71/vim-nightfly-colors.git";
      rev = "06ad2689ebd251a71c6caeb9fb47e231773c9b47";
    }; 
  };
  papyrus = pkgs.vimUtils.buildVimPlugin {
    name = "vim-papyrus";
    src = builtins.fetchGit {
      url = "https://github.com/abeleinin/papyrus";
      rev = "c6536589403b0597819548aea7d8cbc9f2f13647";
    };
  };
  autopairs = pkgs.vimUtils.buildVimPlugin {
    name = "nvim-autopairs";
    src = builtins.fetchGit {
      url = "https://github.com/windwp/nvim-autopairs";
      rev = "0f04d78619cce9a5af4f355968040f7d675854a1";
    };
  };
in
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      { plugin = nightfly-guicolors; type = "lua"; config = "vim.cmd([[colorscheme nightfly]])"; }
      nvim-treesitter.withAllGrammars
      plenary-nvim
      { plugin = barbar-nvim; type = "lua"; config = builtins.readFile(./plugins/barbar-nvim.lua); }
      { plugin = nvim-tree-lua; type = "lua"; config = builtins.readFile(./plugins/nvim-tree.lua); }
      gitsigns-nvim
      nvim-web-devicons
       
      telescope-fzf-native-nvim
      { plugin = telescope-nvim; type = "lua"; config = builtins.readFile(./plugins/telescope.lua); }

      { plugin = lualine-nvim; type = "lua"; config = builtins.readFile(./plugins/lualine-nvim.lua); }
      dressing-nvim

      { plugin = nvim-lspconfig; type = "lua"; config = builtins.readFile(./plugins/nvim-lspconfig.lua); }
      { plugin = nvim-cmp; type = "lua"; config = builtins.readFile(./plugins/nvim-cmp.lua); }
      cmp-buffer
      cmp-path
      cmp-nvim-lsp
      luasnip
      cmp_luasnip
      friendly-snippets
      lspkind-nvim
      
      { plugin = autopairs; type = "lua"; config = builtins.readFile(./plugins/nvim-autopairs.lua); }

      { plugin = toggleterm-nvim; type = "lua"; config = builtins.readFile(./plugins/toggleterm-nvim.lua); }

      vim-fugitive
      vim-flog

      { plugin = papyrus; type = "viml"; }
    ];
    extraConfig = builtins.readFile(./init.lua);
  };
}
