return {
  'jakewvincent/mkdnflow.nvim',
  config = function()
    require('mkdnflow').setup {
      links = {
        transform_explicit = function(text)
          text = text:gsub(' ', '-')
          text = text:gsub('/', '-')
          text = text:lower()
          text = os.date '%Y-%m-%d_' .. text
          return text
        end,
      },
      -- perspective = {
      -- 	priority = "root",
      -- 	root_tell = "index.md"
      -- }
    }
  end,
}
