return {
  {
    "snacks.nvim",
    keys = {
      { "<leader>gi", function() Snacks.picker.gh_issue() end, desc = "GitHub Issues (open)" },
      { "<leader>gI", function() Snacks.picker.gh_issue({ state = "all" }) end, desc = "GitHub Issues (all)" },
      { "<leader>gp", function() Snacks.picker.gh_pr() end, desc = "GitHub PRs (open)" },
      { "<leader>gP", function() Snacks.picker.gh_pr({ state = "all" }) end, desc = "GitHub PRs (all)" },
    },
    opts = {
      gh = {},
      picker = {
        sources = {
          explorer = {},
        },
      },
      dashboard = {
        formats = {
          key = function(item)
            return { { "[", hl = "special" }, { item.key, hl = "key" }, { "]", hl = "special" } }
          end,
        },
        preset = {
          header = [[
    _     _      _     _      _     _
    (c).-.(c)    (c).-.(c)    (c).-.(c)
    / ._. \      / ._. \      / ._. \
    __\( Y )/__  __\( Y )/__  __\( Y )/__
   (_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)
    || D ||      || N ||      || L ||
    _.' `-' '._  _.' `-' '._  _.' `-' '._
   (.-./`-'\.-.)(.-./`-'\.-.)(.-./`-'\.-.)
    `-'     `-'  `-'     `-'  `-'     `-'
]],
        },
        sections = {
          { section = "header", padding = 1 },
          { title = "MRU ", file = vim.fn.fnamemodify(".", ":~") },
          { section = "recent_files", cwd = true, limit = 8, padding = 1 },
          { title = "Bookmarks" },
          { section = "keys" },
        },
      },
    },
  },
}
