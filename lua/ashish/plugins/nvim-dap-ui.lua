return {
  "rcarriga/nvim-dap-ui",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
  config = function()
    local dapui = require("dapui")

    dapui.setup()

    local function map(mode, l, r, desc)
      vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
    end

    map("n", "<leader>tu", dapui.toggle, "Toggle nvim-dap-ui")
  end
}
