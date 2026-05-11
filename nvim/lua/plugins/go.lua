return {
  { import = "lazyvim.plugins.extras.lang.go" },

  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.gopls = opts.servers.gopls or {}
      opts.servers.gopls.settings = opts.servers.gopls.settings or {}
      opts.servers.gopls.settings.gopls = opts.servers.gopls.settings.gopls or {}
      opts.servers.gopls.settings.gopls.analyses = opts.servers.gopls.settings.gopls.analyses or {}
      opts.servers.gopls.settings.gopls.analyses.ST1000 = false
      opts.servers.gopls.settings.gopls.analyses.ST1003 = false

      opts.servers.golangci_lint_ls = {
        filetypes = { "go", "gomod" },
        root_dir = require("lspconfig.util").root_pattern("go.mod", ".golangci.yml"),
        init_options = {
          command = {
            "golangci-lint",
            "run",
            "--output.json.path=stdout",
            "--show-stats=false",
            "--issues-exit-code=0",
            ".",
          },
        },
      }
      return opts
    end,
  },
}
