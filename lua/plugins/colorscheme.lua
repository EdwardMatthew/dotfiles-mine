return {
  "rebelot/kanagawa.nvim",
  lazy = true,
  priority = 1000,
  opts = {
    commentStyle = { italic = false },
    keywordStyle = { italic = false },
    overrides = function(term)
      return {
        ["@variable.builtin"] = { italic = false },
      }
    end,
  },
}
