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
      jira_to_doc_and_link = {
        macro = '$T/<Ignore>"uy$Fh<Ignore>i[<Esc>"upa](<Esc>"upa.md)<Esc>a<CR><Space><Space>*<Space>[<Esc>"upa](<Esc>A)<Esc>',
        desc = 'Make JIRA link a document link and a JIRA link',
      },
      jira_ticket_id_to_link = {
        macro = 'yiWi[<Esc>pa](https://varmajira.eficode.com/browse/<Esc>Ea)<Esc>',
        desc = 'Make JIRA ticket id to link',
      },
    },
    -- All of your `setup(opts)` and saved macros will go here
  },
  config = function(_, opts)
    require('macroni').setup(opts)
    vim.keymap.set({ 'n', 'v' }, '<Leader>m', function()
      require('telescope').extensions.macroni.saved_macros()
    end)
  end,
}
