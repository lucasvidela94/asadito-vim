return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      local toggle_neotree = function()
        vim.cmd("Neotree toggle")
      end
      vim.keymap.set("n", "<C-n>", toggle_neotree, {})
    end
  }
}

