return {
  "olimorris/codecompanion.nvim",

  config = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },

  opts = {
    adapters = {

      -- Qwen 2.5 Coder 14B Instruct
      qwen_coder = function()
        return require("codecompanion.adapters").extend("ollama", {
          name = "qwen_coder",
          schema = { model = { default = "qwen2.5:14b-instruct" } },
        })
      end,
    },

    strategies = {

      -- NOTE: CHAT BUFFER
      chat = {
        adapter = "qwen_coder",

        keymaps = {
          send = { modes = { n = "<C-s>", i = "<C-s>" } }, -- Send message
          close = { modes = { n = "<C-c>", i = "<C-c>" } }, -- Close chat
        },

        -- `/` commands allow dynamic context insertion into the chat buffer
        -- via files, date/time, and other content
        slash_commands = {
          ["file"] = {
            -- Location to the slash command in CodeCompanion
            callback = "strategies.chat.slash_commands.file",
            description = "Select a file using telescope",
            opts = {
              -- Other options include 'default', 'mini_pick', 'fzf_lua', snacks
              provider = "telescope",
              contains_code = true,
            },
          },
        },
      },
      -- Additional options
      display = {
        chat = {
          show_settings = true,
        },
      },
    },
  },
}
