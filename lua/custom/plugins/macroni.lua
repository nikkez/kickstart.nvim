return {
  'jesseleite/nvim-macroni',
  lazy = false,
  opts = {
    macros = {
      jira_to_link = {
        macro = '$T/<Ignore>y$Fh<Ignore>i[<Esc>pa](<Esc>A)<Esc>',
        keymap = '<Leader>j',
        desc = 'Make JIRA link a markdown link',
      },
    },
    -- All of your `setup(opts)` and saved macros will go here
  },
  config = function(_, opts)
    vim.keymap.set({ 'n', 'v' }, '<Leader>m', function()
      require('telescope').extensions.macroni.saved_macros()
    end)
    require('macroni').setup { opts }
  end,
}
