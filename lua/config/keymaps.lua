-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- General
vim.keymap.set("n", "<leader>'", "<C-^>")
vim.keymap.set("n", "<C-j>", "5<C-e>")
vim.keymap.set("n", "<C-k>", "5<C-y>")
vim.keymap.set("n", "<leader>m", ":split<CR>:terminal<cr>")
vim.keymap.set("n", "<leader>z", ":w<CR>:source ~/.config/nvim/init.lua<CR>")

-- Code section
vim.keymap.set("n", "<leader>ai", "i#! <ESC>80i-<ESC>0lli  <ESC>i")
vim.keymap.set("n", "<leader>ac", "80|C<ESC>0")
vim.keymap.set(
  "n",
  "<leader>ap",
  ":lua vim.fn.expand('%')<CR>o<C-r>%<ESC><C-v>0d:split<CR>:terminal<CR>igrep '^#!' <C-\\><C-n>pi<CR>exit"
)

-- Execute codes in interactive mode
vim.keymap.set("n", "<leader>rl", "yy<C-w>wpi<CR><C-\\><C-n><C-w>wj", { desc = "run line and go to the next line" })
vim.keymap.set("n", "<leader>rr", "yy<C-w>wpi<CR><C-\\><C-n><C-w>w", { desc = "run line and stay in line" })
vim.keymap.set("n", "<leader>rh", "viwy<C-w>whead(pi)<CR><C-\\><C-n><C-w>w", { desc = "run head function in variable" })
vim.keymap.set("n", "<leader>rk", "V}y<C-w>wpi<CR><C-\\><C-n><C-w>w}", { desc = "run next block of code" })
vim.keymap.set("n", "<leader>ri", "{V}y<C-w>wpi<CR><C-\\><C-n><C-w>w}", { desc = "run current block of code" })
vim.keymap.set("v", "<leader>rb", "y<C-w>wpi<CR><C-\\><C-n><C-w>w", { desc = "run selection" })
vim.keymap.set(
  "n",
  "<leader>rf",
  ":lua vim.fn.expand('%p')<CR>o<ESC>d0i<C-r>%<ESC><C-v>0d<C-w>wi%run  <C-\\><C-n>pi<CR><C-\\><C-n>G<C-w>wdd"
)
-- <C-w>wpi<CR><C-\\><C-n><C-w>w", { desc = "run the whole file" })
--

-- R interactive
vim.keymap.set("n", "<leader>ro", ":split<CR>:terminal<CR>iconda activate bioinfo<CR>R<CR><C-\\><C-n><C-w>w")
vim.keymap.set("n", "<leader>rv", ":vsplit<CR>:terminal<CR>iconda activate bioinfo<CR>R<CR><C-\\><C-n><C-w>w")
vim.keymap.set("n", "<leader>rq", '<C-w>wiq(save="no")<CR>exit<CR>')
vim.keymap.set("i", "<C-]>", "<Esc>a %>% ")
vim.keymap.set("i", "<C-x>", "<Esc>a %in% ")
vim.keymap.set("i", "<C-_>", "<Esc>a <- ")
--

-- Python interactive
vim.keymap.set(
  "n",
  "<leader>pv",
  ":vsplit<CR>:terminal<CR>iconda activate bioinfo<CR>ipython --no-autoindent<CR><C-\\><C-n><C-w>w"
)
vim.keymap.set("n", "<leader>pq", "<C-w>wiexit()<CR><C-\\><C-n><C-w>w<C-w>wiexit<CR>")
-- vim.keymap.set("n", "<leader>ph", 'viwy<C-w>wpi.head()<CR><C-w>w')
