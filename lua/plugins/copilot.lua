return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = true, auto_trigger = true, keymap = { accept = "<M-l>" } },
      })
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    -- 'Not Loaded' সমস্যা সমাধানের জন্য 'VeryLazy' ইভেন্ট যোগ করা হয়েছে
    event = "VeryLazy", 
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" }, 
    },
    opts = {
      debug = false, 
    },
    keys = {
      -- সরাসরি কমান্ড মোড ব্যবহার করা হচ্ছে যাতে ভুল না হয়
      { "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "CopilotChat" },
    },
  },
}
