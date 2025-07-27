return {
  "hkupty/iron.nvim",
  cmd = { "IronRepl", "IronRestart", "IronFocus", "IronHide" },
  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<Leader>tr"] = { "<Cmd>IronRepl<CR>", desc = "toggle python repl (iron)" }
          }
        }
      }
    }
  },
  config = function()
    local view = require "iron.view"
    local common = require "iron.fts.common"
    require("iron.core").setup {
      config = {
        -- whether a repl should be discarded or not
        scratch_repl = true,
        -- your rpl definitions come here
        repl_definition = {
          sh = { command = { "zsh" } },
          python = {
            -- command = { "python" },
            command = { "ipython", "--no-autoindent" },
            format = common.bracketed_paste_python,
            block_dividers = { "# %%", "#%%" },
          },
        },
        repl_open_cmd = view.offset {
          width = "40%",
          height = "100%",
          w_offset = view.helpers.flip(0),
          h_offset = view.helpers.proportion(0.5),
        },
      },
      keymaps = {
        -- repl
        toggle_repl = "<Leader>rS",
        restart_repl = "<Leader>rR",
        interrupt = "<Leader>rI",
        clear = "<Leader>rC",
        exit = "<Leader>rE",
        send_file = "<Leader>rf",
        send_line = "<Leader>rl",
        send_until_cursor = "<Leader>rc",
        send_code_block = "<Leader>rB",
        send_code_block_and_move = "<Leader>rb",
      },
      ignore_blank_lines = true,
    }
  end,
}
