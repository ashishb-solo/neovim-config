return {
  "leoluz/nvim-dap-go",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local dap_go = require("dap-go")

    dap_go.setup()

    local function map(mode, l, r, desc)
      vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
    end

    map("n", "<leader>tt", dap_go.debug_test, "Debug the current test")
  end
}
