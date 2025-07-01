return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "alexghergh/nvim-tmux-navigation",
    event = "VeryLazy",
    config = function ()
      require "configs.nvim-tmux-navigation"
    end
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function ()
      require "configs.lint"
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-live-grep-args.nvim" ,
        -- This will not install any breaking changes.
        -- For major updates, this must be adjusted manually.
        version = "^1.1.0",
      },
    },
    config = function()
      require("telescope").load_extension("live_grep_args")
    end
  },
  { "github/copilot.vim",
    event = "VeryLazy",
  },
  {
    'rmagatti/auto-session',
    lazy = false,

    ---enables autocomplete for opts
    opts = {
    }
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- "eslint-lsp",
        "prettier",
        "typescript-language-server",
      }
    }
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
