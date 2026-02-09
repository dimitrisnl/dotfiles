return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_colors = function(c)
        -- Base (bg colors left to transparent = true)
        c.bg_statusline = c.none
        c.bg_highlight = "#292e42"
        c.bg_search = "#3d59a1"
        c.bg_visual = "#3b4261"
        c.border = "#1b1e2e"
        c.fg = "#a9b1d6"
        c.fg_dark = "#8089b3"
        c.fg_gutter = "#3b4261"
        c.fg_sidebar = "#8089b3"
        -- Syntax
        c.blue = "#8caaee"
        c.blue0 = "#3d59a1"
        c.blue1 = "#7aa2f7"
        c.blue5 = "#6eb4bf"
        c.blue6 = "#0da0ba"
        c.cyan = "#6eb4bf"
        c.green = "#a6d189"
        c.green1 = "#449dab"
        c.magenta = "#ca9ee6"
        c.magenta2 = "#d3b1c8"
        c.orange = "#F0AC8B"
        c.purple = "#ca9ee6"
        c.red = "#F0879A"
        c.red1 = "#bb616b"
        c.teal = "#0da0ba"
        c.yellow = "#e5c890"
        -- Git
        c.git = {
          add = "#449dab",
          change = "#6183bb",
          delete = "#914c54",
        }
        c.gitSigns = {
          add = "#449dab",
          change = "#6183bb",
          delete = "#914c54",
        }
        -- Diagnostics
        c.error = "#bb616b"
        c.warning = "#c49a5a"
        c.info = "#0da0ba"
        c.hint = "#0da0ba"
        -- Terminal
        c.terminal_black = "#414868"
        -- Comment
        c.comment = "#5F6996"
        c.dark3 = "#545c7e"
        c.dark5 = "#687395"
      end,
      on_highlights = function(hl, c)
        -- Syntax - match lydia exactly
        hl.String = { fg = "#6eb4bf" }
        hl.Character = { fg = "#F0AC8B" }
        hl.Number = { fg = "#F0AC8B" }
        hl.Boolean = { fg = "#F0AC8B" }
        hl.Float = { fg = "#F0AC8B" }
        hl.Constant = { fg = "#F0AC8B" }
        hl.Identifier = { fg = "#C0CAF5" }
        hl.Function = { fg = "#8caaee" }
        hl.Keyword = { fg = "#ca9ee6" }
        hl.Statement = { fg = "#ca9ee6" }
        hl.Conditional = { fg = "#ca9ee6" }
        hl.Repeat = { fg = "#ca9ee6" }
        hl.Operator = { fg = "#d3b1c8" }
        hl.PreProc = { fg = "#ca9ee6" }
        hl.Include = { fg = "#ca9ee6" }
        hl.Type = { fg = "#8caaee" }
        hl.StorageClass = { fg = "#ca9ee6" }
        hl.Structure = { fg = "#8caaee" }
        hl.Tag = { fg = "#F0879A" }
        hl.Special = { fg = "#F0879A" }
        hl.SpecialChar = { fg = "#F0AC8B" }
        hl.Delimiter = { fg = "#687395" }
        hl.Comment = { fg = "#5F6996", italic = true }
        hl.Label = { fg = "#7aa2f7" }
        hl.Exception = { fg = "#ca9ee6" }
        hl.Macro = { fg = "#8caaee" }
        hl.Todo = { fg = "#e5c890", bold = true }
        -- Treesitter
        hl["@variable"] = { fg = "#C0CAF5" }
        hl["@variable.builtin"] = { fg = "#F0AC8B" }
        hl["@variable.parameter"] = { fg = "#d3b1c8" }
        hl["@variable.member"] = { fg = "#8caaee" }
        hl["@constant"] = { fg = "#F0AC8B" }
        hl["@constant.builtin"] = { fg = "#F0AC8B" }
        hl["@module"] = { fg = "#C0CAF5" }
        hl["@string"] = { fg = "#6eb4bf" }
        hl["@string.regexp"] = { fg = "#d3b1c8" }
        hl["@string.escape"] = { fg = "#5F6996" }
        hl["@string.special"] = { fg = "#F0AC8B" }
        hl["@string.special.symbol"] = { fg = "#F0AC8B" }
        hl["@string.special.url"] = { fg = "#8caaee" }
        hl["@string.special.path"] = { fg = "#6eb4bf" }
        hl["@boolean"] = { fg = "#F0AC8B" }
        hl["@number"] = { fg = "#F0AC8B" }
        hl["@number.float"] = { fg = "#F0AC8B" }
        hl["@type"] = { fg = "#8caaee" }
        hl["@type.builtin"] = { fg = "#F0AC8B" }
        hl["@attribute"] = { fg = "#d3b1c8" }
        hl["@property"] = { fg = "#8caaee" }
        hl["@function"] = { fg = "#8caaee" }
        hl["@function.builtin"] = { fg = "#F0AC8B" }
        hl["@function.call"] = { fg = "#8caaee" }
        hl["@function.macro"] = { fg = "#8caaee" }
        hl["@function.method"] = { fg = "#8caaee" }
        hl["@function.method.call"] = { fg = "#8caaee" }
        hl["@constructor"] = { fg = "#8caaee" }
        hl["@operator"] = { fg = "#d3b1c8" }
        hl["@keyword"] = { fg = "#ca9ee6" }
        hl["@keyword.function"] = { fg = "#ca9ee6" }
        hl["@keyword.operator"] = { fg = "#d3b1c8" }
        hl["@keyword.import"] = { fg = "#ca9ee6" }
        hl["@keyword.storage"] = { fg = "#ca9ee6" }
        hl["@keyword.repeat"] = { fg = "#ca9ee6" }
        hl["@keyword.return"] = { fg = "#ca9ee6" }
        hl["@keyword.exception"] = { fg = "#ca9ee6" }
        hl["@keyword.conditional"] = { fg = "#ca9ee6" }
        hl["@keyword.directive"] = { fg = "#C0CAF5" }
        hl["@punctuation.delimiter"] = { fg = "#687395" }
        hl["@punctuation.bracket"] = { fg = "#687395" }
        hl["@punctuation.special"] = { fg = "#F0AC8B" }
        hl["@comment"] = { fg = "#5F6996", italic = true }
        hl["@comment.documentation"] = { fg = "#6F7BB0", italic = true }
        hl["@tag"] = { fg = "#F0879A" }
        hl["@tag.builtin"] = { fg = "#F0879A" }
        hl["@tag.attribute"] = { fg = "#d3b1c8" }
        hl["@tag.delimiter"] = { fg = "#687395" }
        hl["@markup.heading"] = { fg = "#C0CAF5", bold = true }
        hl["@markup.heading.1"] = { fg = "#89DDFF", bold = true }
        hl["@markup.heading.2"] = { fg = "#61BDF2", bold = true }
        hl["@markup.heading.3"] = { fg = "#7AA2F7", bold = true }
        hl["@markup.heading.4"] = { fg = "#6D91DE", bold = true }
        hl["@markup.heading.5"] = { fg = "#9AA5CE", bold = true }
        hl["@markup.heading.6"] = { fg = "#747CA1", bold = true }
        hl["@markup.link"] = { fg = "#8caaee" }
        hl["@markup.link.url"] = { fg = "#6eb4bf", underline = true }
        hl["@markup.raw"] = { fg = "#6eb4bf" }
        hl["@markup.quote"] = { fg = "#5F6996" }
        -- LSP semantic tokens
        hl["@lsp.type.parameter"] = { fg = "#d3b1c8" }
        hl["@lsp.type.property"] = { fg = "#8caaee" }
        hl["@lsp.type.variable"] = { fg = "#C0CAF5" }
        hl["@lsp.type.namespace"] = { fg = "#C0CAF5" }
        hl["@lsp.type.enum"] = { fg = "#F0AC8B" }
        hl["@lsp.type.enumMember"] = { fg = "#7aa2f7" }
        hl["@lsp.type.interface"] = { fg = "#8caaee" }
        hl["@lsp.type.class"] = { fg = "#8caaee" }
        hl["@lsp.type.type"] = { fg = "#8caaee" }
        hl["@lsp.type.typeParameter"] = { fg = "#d3b1c8" }
        hl["@lsp.type.function"] = { fg = "#8caaee" }
        hl["@lsp.type.method"] = { fg = "#8caaee" }
        hl["@lsp.type.macro"] = { fg = "#8caaee" }
        hl["@lsp.type.decorator"] = { fg = "#d3b1c8" }
        -- UI - line numbers
        hl.LineNr = { fg = "#3b4261" }
        hl.CursorLineNr = { fg = "#8089b3" }
        -- UI - selection/search
        hl.Visual = { bg = "#3b4261" }
        hl.Search = { fg = "#a9b1d6", bg = "#3d59a1" }
        hl.IncSearch = { fg = "#24283b", bg = "#7aa2f7" }
        hl.CurSearch = { fg = "#24283b", bg = "#7aa2f7" }
        -- Flash (leap/sneak labels)
        hl.FlashLabel = { fg = "#1a1b26", bg = "#ca9ee6", bold = true }
        hl.FlashMatch = { fg = "#a9b1d6", bg = "#3b4261" }
        hl.FlashCurrent = { fg = "#a9b1d6", bg = "#3d59a1" }
        -- UI - indent guides
        hl.IblIndent = { fg = "#2d324a" }
        hl.IblScope = { fg = "#8089b3" }
        -- Diagnostics
        hl.DiagnosticError = { fg = "#bb616b" }
        hl.DiagnosticWarn = { fg = "#c49a5a" }
        hl.DiagnosticInfo = { fg = "#0da0ba" }
        hl.DiagnosticHint = { fg = "#0da0ba" }
        hl.DiagnosticUnderlineError = { sp = "#bb616b", undercurl = true }
        hl.DiagnosticUnderlineWarn = { sp = "#c49a5a", undercurl = true }
        hl.DiagnosticUnderlineInfo = { sp = "#0da0ba", undercurl = true }
        hl.DiagnosticUnderlineHint = { sp = "#0da0ba", undercurl = true }
      end,
    },
  },
}
