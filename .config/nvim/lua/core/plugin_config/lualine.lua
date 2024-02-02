require("lualine").setup {
  options = {
    icons_enabled = false,
    theme = "auto",
    -- component_separators = "|",
    section_seperators = "",
  },
  sections = {
    lualine_a = {
      {
        "fiename",
        path = 1,
      }
    }
  }
}

