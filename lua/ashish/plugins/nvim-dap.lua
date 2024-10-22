return {
  "mfussenegger/nvim-dap",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local dap = require("dap")

    local function map(mode, l, r, desc)
      vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
    end

    map("n", "<leader>tb", dap.toggle_breakpoint, "Add breakpoint at current line")
    map("n", "<leader>tc", dap.continue, "Start/Continue debugger")
    map("n", "<leader>tr", dap.repl.toggle, "Toggle the repl")
    map("n", "<leader>tl", dap.run_last, "Debug the last test")
  end
}
