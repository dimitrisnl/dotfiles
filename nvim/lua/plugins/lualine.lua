return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      component_separators = "",
      section_separators = "",
    },
    sections = {
      lualine_a = {
        {
          "mode",
          fmt = function(str)
            local mode_map = {
              NORMAL = "N",
              INSERT = "I",
              VISUAL = "S",
              ["V-LINE"] = "S",
              ["V-BLOCK"] = "S",
              REPLACE = "R",
              COMMAND = "C",
              TERMINAL = "T",
            }
            return mode_map[str] or str:sub(1, 1)
          end,
        },
      },
      lualine_b = {},
      lualine_c = {
        {
          "filename",
          path = 0,
          symbols = {
            modified = "[+]",
            readonly = "[-]",
            unnamed = "[No Name]",
          },
        },
        {
          "diagnostics",
          symbols = {
            error = " ",
            warn = " ",
            info = " ",
            hint = "󰌵 ",
          },
        },
      },
      lualine_x = {
        { "branch", icon = "" },
        { "progress" },
      },
      lualine_y = {},
      lualine_z = {},
    },
  },
}
