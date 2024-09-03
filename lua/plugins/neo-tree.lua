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

      -- Mapeo para abrir NeoTree
      vim.keymap.set("n", "<C-n>", toggle_neotree, {})

      -- Mapeo para abrir el archivo seleccionado en un nuevo buffer dividido
      -- mi idea es la siguiente apretar control +  o  + algun direccional desde donde quiero
      -- que este ubicado el nuevo buffer si es control + o + direccional arriba entonces el buffers
      -- seleccionado ira arriba del buffer actual 
      vim.keymap.set("n", "<C-o>", function()
        vim.cmd("Neotree reveal")  -- Asegúrate de que el archivo esté visible
        vim.cmd("Neotree open")     -- Abre NeoTree si no está abierto
        vim.cmd("Neotree focus")    -- Enfoca NeoTree para asegurarte de que está activo
        vim.api.nvim_input("<CR>")   -- Simula presionar Enter para abrir el archivo
        vim.cmd("vsplit")            -- Abre el archivo en un nuevo buffer dividido
      end, {})
    end
  }
}
