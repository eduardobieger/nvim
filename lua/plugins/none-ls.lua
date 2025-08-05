return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
    "jayp0521/mason-null-ls.nvim",
  },
  config = function()
    local null_ls = require "null-ls"
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    -- Formatters and linters for mason to install
    require("mason-null-ls").setup {
      ensure_installed = {
        "prettier", -- TS/JS formatter
        "stylua", -- Lua formatter
        "eslint_d", -- TS/JS linter
        "shfmt", -- Shell formatter
        "checkmake", -- Makefiles linter
        "ruff", -- Python linter and formatter
        "gofumpt", -- Go formatter
        "golangci-lint", -- Go linter
        "prismals",
      },
      automatic_installation = true,
    }

    local sources = {
      diagnostics.checkmake,
      diagnostics.golangci_lint,
      formatting.prettier.with { filetypes = { "html", "json", "yaml", "markdown" } },
      formatting.stylua,
      formatting.shfmt.with { args = { "-i", "4" } },
      formatting.terraform_fmt,
      require("none-ls.formatting.ruff").with { extra_args = { "--extend-select", "I" } },
      require "none-ls.formatting.ruff_format",
      formatting.gofumpt,
      formatting.prismaFmt,
    }

    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
    null_ls.setup {
      sources = sources,
      on_attach = function(client, bufnr)
        if client.supports_method "textDocument/formatting" then
          vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format {
                bufnr = bufnr,
                filter = function(format_client)
                  return format_client.name == "null-ls"
                end,
              }
            end,
          })
        end
      end,
    }
  end,
}
