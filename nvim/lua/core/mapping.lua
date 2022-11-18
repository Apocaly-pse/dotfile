local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

function vim.fn.ExecuteMacroOverVisualRange()
    vim.api.nvim_echo({ { "@" .. vim.fn.getcmdline() } }, false, {})
    vim.fn.execute(":'<,'>normal @" .. vim.fn.nr2char(vim.fn.getchar()))
end

-- vim.g['mc'] = "y/\\V<C-r>=vim.fn.escape(@\", '/')<CR><CR>"
--     vnoremap <expr> cn g:mc . "``cgn"
--     vnoremap <expr> cN g:mc . "``cgN"
-- default map
local def_map = {
    -- Vim map
    -- set multi visual Insert normal mode
    ["x|@"] = map_cu("lua vim.fn.ExecuteMacroOverVisualRange()"),
    -- ["v|cn"] = map_cmd("y/\\V<C-r>=vim.fn.escape(@\", '/')<CR><CR>" .. '``cgn'):with_noremap():with_expr(),
    -- ["v|cN"] = map_cmd("y/\\V<C-r>=vim.fn.escape(@\", '/')<CR><CR>" .. '``cgN'):with_noremap():with_expr(),
    -- select and change
    ["n|cn"] = map_cmd("*``cgn"):with_noremap(),
    ["n|cN"] = map_cmd("*``cgN"):with_noremap(),
    -- edit config file
    ["n|<C-,>"] = map_cmd(":e ~/.config/nvim/lua/<CR>"):with_noremap():with_silent(),
    -- save and quit
    ["n|<C-z>"] = map_cmd(":retab<CR> ZZ"):with_noremap():with_silent(),
    -- quit!
    ["n|<C-q>"] = map_cmd(":q!<CR>"):with_silent(),
    -- switch buffer
    ["n|<C-S-b>"] = map_cmd(":b "):with_noremap(),
    -- default config
    ["n|<Tab>"] = map_cr("normal zc"):with_noremap():with_silent(),
    ["n|<S-Tab>"] = map_cr("normal zo"):with_noremap():with_silent(),
    ["n|<C-x>k"] = map_cr("bdelete"):with_noremap():with_silent(),
    ["n|<C-s>"] = map_cr(":retab<CR>:w"):with_noremap():with_silent(),
    ["n|Y"] = map_cmd("y$"),
    ["n|D"] = map_cmd("d$"),
    ["n|n"] = map_cmd("nzzzv"):with_noremap(),
    ["n|N"] = map_cmd("Nzzzv"):with_noremap(),
    ["n|J"] = map_cmd("mzJ`z"):with_noremap(),
    ["n|<C-h>"] = map_cmd("<C-w>h"):with_noremap(),
    ["n|<C-l>"] = map_cmd("<C-w>l"):with_noremap(),
    ["n|<C-j>"] = map_cmd("<C-w>j"):with_noremap(),
    ["n|<C-k>"] = map_cmd("<C-w>k"):with_noremap(),
    ["n|<A-[>"] = map_cr("vertical resize -5"):with_silent(),
    ["n|<A-]>"] = map_cr("vertical resize +5"):with_silent(),
    ["n|<A-;>"] = map_cr("resize -2"):with_silent(),
    ["n|<A-'>"] = map_cr("resize +2"):with_silent(),
    -- ["n|<C-q>"] = map_cmd(":wq<CR>"),
    ["n|<A-q>"] = map_cmd(":Bwipeout<CR>"),
    -- ["n|<A-S-q>"] = map_cmd(":q!<CR>"),
    ["n|<leader>o"] = map_cr("setlocal spell! spelllang=en_us"),
    -- Insert
    -- edit config file
    ["i|<C-,>"] = map_cmd("<ESC>:e ~/.config/nvim/lua/<CR>"):with_noremap():with_silent(),
    -- insert full path here
    ["i|<C-t>"] = map_cmd([[<C-R>=expand("%:p:h") . "/" <CR>]]):with_noremap():with_silent(),
    ["i|<C-S-b>"] = map_cmd("<ESC>:b "):with_noremap(),
    ["i|<C-u>"] = map_cmd("<C-G>u<C-U>"):with_noremap(),
    ["i|<C-b>"] = map_cmd("<Left>"):with_noremap(),
    ["i|<C-f>"] = map_cmd("<Right>"):with_noremap(),
    ["i|<C-a>"] = map_cmd("<ESC>^i"):with_noremap(),
    ["i|<C-e>"] = map_cmd("<ESC><ESC>$a"):with_noremap(),
    ["i|<C-s>"] = map_cmd("<Esc>:retab<CR>:w<CR>"):with_noremap():with_silent(),
    ["i|<C-q>"] = map_cmd("<Esc>:q!<CR>"),
    ["i|<C-d>"] = map_cmd("<Del>"):with_noremap(),
    -- command line
    ["c|<C-b>"] = map_cmd("<Left>"):with_noremap(),
    ["c|<C-f>"] = map_cmd("<Right>"):with_noremap(),
    ["c|<C-a>"] = map_cmd("<Home>"):with_noremap(),
    ["c|<C-e>"] = map_cmd("<End>"):with_noremap(),
    ["c|<C-d>"] = map_cmd("<Del>"):with_noremap(),
    ["c|<C-h>"] = map_cmd("<BS>"):with_noremap(),
    ["c|<C-t>"] = map_cmd([[<C-R>=expand("%:p:h") . "/" <CR>]]):with_noremap(),
    ["c|w!!"] = map_cmd("execute 'silent! write !sudo tee % >/dev/null' <bar> edit!"),
    -- Visual
    ["v|J"] = map_cmd(":m '>+1<cr>gv=gv"),
    ["v|K"] = map_cmd(":m '<-2<cr>gv=gv"),
    ["v|<"] = map_cmd("<gv"),
    ["v|>"] = map_cmd(">gv"),
}

bind.nvim_load_mapping(def_map)
