hi clear
syntax reset
let g:colors_name = "eva"
set background=dark
set t_Co=256
hi Normal guifg=#dadada ctermbg=NONE guibg=#272935 gui=NONE

" defined
hi Normal guifg=#dadada ctermbg=NONE guibg=#14161b gui=NONE
hi Number guifg=#dadada ctermbg=NONE guibg=#14161b gui=NONE
hi String guifg=#f872bd guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#fdaecb guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#9d69b8 guibg=NONE gui=NONE cterm=NONE
hi Include guifg=#9d69b8 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#ffffff guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#9d69b8 guibg=NONE gui=NONE cterm=NONE
hi Operator guifg=#9d69b8 guibg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#9d69b8 guibg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#dadada guibg=#14161b gui=NONE cterm=NONE
hi StatusLineNC guifg=#14161b guibg=#dadada gui=NONE cterm=NONE
hi StatusLineTerm guifg=#dadada guibg=#14161b gui=NONE cterm=NONE
hi StatusLineTermNC guifg=#14161b guibg=#dadada gui=NONE cterm=NONE
hi TabLine guifg=#333333 guibg=#dadada gui=NONE cterm=NONE
hi TabLineFill guifg=NONE guibg=#dadada gui=NONE cterm=NONE
hi TabLineSel guifg=#dadada guibg=#14161b gui=NONE cterm=NONE
hi LineNr guifg=#9b9b9b guibg=NONE gui=NONE cterm=NONE
hi Comment guifg=#9b9b9b gui=italic
hi SpecialComment guifg=#9b9b9b gui=italic guibg=NONE

" default, copied from desert colorscheme
hi VertSplit guifg=#7f7f8c guibg=#c2bfa5 gui=NONE cterm=NONE
hi Pmenu guifg=#ffffff guibg=#666666 gui=NONE cterm=NONE
hi PmenuSel guifg=#333333 guibg=#f0e68c gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=#333333 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#c2bfa5 gui=NONE cterm=NONE
hi PmenuMatch guifg=#ffa0a0 guibg=#666666 gui=NONE cterm=NONE
hi PmenuMatchSel guifg=#cd5c5c guibg=#f0e68c gui=NONE cterm=NONE
hi ToolbarLine guifg=NONE guibg=#666666 gui=NONE cterm=NONE
hi ToolbarButton guifg=#333333 guibg=#ffde9b gui=bold cterm=bold
hi NonText guifg=#6dceeb guibg=#4d4d4d gui=NONE cterm=NONE
hi SpecialKey guifg=#9acd32 guibg=NONE gui=NONE cterm=NONE
hi Folded guifg=#eeee00 guibg=#4d4d4d gui=NONE cterm=NONE
hi Visual guifg=#f0e68c guibg=#6b8e24 gui=NONE cterm=NONE
hi VisualNOS guifg=#f0e68c guibg=#6dceeb gui=NONE cterm=NONE
hi FoldColumn guifg=#eeee00 guibg=#4d4d4d gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#666666 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#666666 gui=NONE cterm=NONE
hi CursorLineNr guifg=#eeee00 guibg=NONE gui=bold cterm=bold
hi QuickFixLine guifg=#333333 guibg=#f0e68c gui=NONE cterm=NONE
hi SignColumn guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Underlined guifg=#75a0ff guibg=NONE gui=underline cterm=underline
hi Error guifg=#ff0000 guibg=#ffffff gui=reverse cterm=reverse
hi ErrorMsg guifg=#ff0000 guibg=#ffffff gui=reverse cterm=reverse
hi ModeMsg guifg=#ffde9b guibg=NONE gui=bold cterm=bold
hi WarningMsg guifg=#cd5c5c guibg=NONE gui=bold cterm=bold
hi MoreMsg guifg=#9acd32 guibg=NONE gui=bold cterm=bold
hi Question guifg=#89fb98 guibg=NONE gui=bold cterm=bold
hi Todo guifg=#14161b guibg=#eeee00 gui=NONE cterm=NONE
hi MatchParen guifg=#7f7f8c guibg=#bdb76b gui=NONE cterm=NONE
hi Search guifg=#f0e68c guibg=#7f7f8c gui=NONE cterm=NONE
hi IncSearch guifg=#f0e68c guibg=#cd853f gui=NONE cterm=NONE
hi WildMenu guifg=#333333 guibg=#eeee00 gui=NONE cterm=NONE
hi ColorColumn guifg=#ffffff guibg=#cd5c5c gui=NONE cterm=NONE
hi Cursor guifg=#333333 guibg=#f0e68c gui=NONE cterm=NONE
hi lCursor guifg=#333333 guibg=#ff0000 gui=NONE cterm=NONE
hi debugPC guifg=#666666 guibg=NONE gui=reverse cterm=reverse
hi debugBreakpoint guifg=#ffa0a0 guibg=NONE gui=reverse cterm=reverse
hi SpellBad guifg=#cd5c5c guibg=NONE guisp=#cd5c5c gui=undercurl cterm=underline
hi SpellCap guifg=#75a0ff guibg=NONE guisp=#75a0ff gui=undercurl cterm=underline
hi SpellLocal guifg=#ffde9b guibg=NONE guisp=#ffde9b gui=undercurl cterm=underline
hi SpellRare guifg=#9acd32 guibg=NONE guisp=#9acd32 gui=undercurl cterm=underline
hi Identifier guifg=#89fb98 guibg=NONE gui=NONE cterm=NONE
hi Constant guifg=#ffa0a0 guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#cd5c5c guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#bdb76b guibg=NONE gui=bold cterm=bold
hi Directory guifg=#6dceeb guibg=NONE gui=NONE cterm=NONE
hi Conceal guifg=#666666 guibg=NONE gui=NONE cterm=NONE
hi Ignore guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Title guifg=#cd5c5c guibg=NONE gui=bold cterm=bold
hi DiffAdd guifg=#ffffff guibg=#5f875f gui=NONE cterm=NONE
hi DiffChange guifg=#ffffff guibg=#5f87af gui=NONE cterm=NONE
hi DiffText guifg=#000000 guibg=#c6c6c6 gui=NONE cterm=NONE
hi DiffDelete guifg=#ffffff guibg=#af5faf gui=NONE cterm=NONE
