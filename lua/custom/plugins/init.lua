-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--  vim.api.nvim_create_augroup('kickstart-highlight-yank',
return {
  {
    vim.api.nvim_create_autocmd('FileType', {
      group = vim.api.nvim_create_augroup('terraform-comment-string', { clear = true }),
      pattern = { 'terraform' },
      callback = function()
        vim.opt.commentstring = '# %s'
      end,
      desc = 'Change commentstring for terraform files',
    }),
  },
}
