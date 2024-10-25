return {
  "mfussenegger/nvim-dap",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local dap = require("dap")

    local function map(mode, l, r, desc)
      vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
    end

    -- map("n", "<leader>db", dap.toggle_breakpoint, "Add breakpoint at current line")
    -- map("n", "<leader>dc", dap.continue, "Start/Continue debugger")
    -- map("n", "<leader>dr", dap.repl.toggle, "Toggle the repl")
    -- map("n", "<leader>dl", dap.run_last, "Run the last debug configuration")
    -- map("n", "<leader>dl", dap.run_last, "Step into")
    -- map("n", "<leader>dl", dap.run_last, "Step over")
    -- map("n", "<leader>dl", dap.run_last, "Step out")
    map("n", "<leader>dB", function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, "Breakpoint Condition" )
    map("n", "<leader>db", function() dap.toggle_breakpoint() end, "Toggle Breakpoint" )
    map("n", "<leader>dc", function() dap.continue() end, "Continue" )
    -- map("n", "<leader>da", function() dap.continue({ before = get_args }) end, "Run with Args" )
    map("n", "<leader>dC", function() dap.run_to_cursor() end, "Run to Cursor" )
    map("n", "<leader>dg", function() dap.goto_() end, "Go to Line (No Execute)" )
    map("n", "<leader>di", function() dap.step_into() end, "Step Into" )
    map("n", "<leader>dj", function() dap.down() end, "Down" )
    map("n", "<leader>dk", function() dap.up() end, "Up" )
    map("n", "<leader>dl", function() dap.run_last() end, "Run Last" )
    map("n", "<leader>do", function() dap.step_out() end, "Step Out" )
    map("n", "<leader>dO", function() dap.step_over() end, "Step Over" )
    map("n", "<leader>dp", function() dap.pause() end, "Pause" )
    map("n", "<leader>dr", function() dap.repl.toggle() end, "Toggle REPL" )
    map("n", "<leader>ds", function() dap.session() end, "Session" )
    map("n", "<leader>dt", function() dap.terminate() end, "Terminate" )

  end
}
