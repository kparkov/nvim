return {
  dir = vim.fn.stdpath("config") .. "/lua/plugins/scratch-file.lua", -- Path to this file
  config = function()
    -- Define the Scratch command
    vim.api.nvim_create_user_command("Scratch", function()
      local scratch_file = vim.fn.expand("~/.scratch.md") -- Path to the scratch file
      if vim.fn.filereadable(scratch_file) == 0 then
        vim.fn.writefile({}, scratch_file) -- Create the file if it doesn't exist
      end
      vim.cmd("tabedit " .. scratch_file) -- Open the file in a new tab
    end, {})
  end,
}
