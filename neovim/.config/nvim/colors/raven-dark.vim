" Raven Dark
"  Author: baskerville <nihilhill@gmail.com>
" Created: 2016
" Version: 0.1

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="raven-dark"


" Main
hi Normal guifg=#b2b2b2 guibg=#292828 gui=none
hi Comment guifg=#808080 guibg=#292828 gui=none

" Constant
hi Constant guifg=#d7d787 guibg=#292828 gui=none
hi String guifg=#d7d7af guibg=#292828 gui=none
hi Character guifg=#d7d7af guibg=#292828 gui=none
hi Number guifg=#d7af87 guibg=#292828 gui=none
hi Boolean guifg=#d7d7af guibg=#292828 gui=none
hi Float guifg=#d7af87 guibg=#292828 gui=none

" Variable Name
hi Identifier guifg=#d7afd7 guibg=#292828 gui=none
hi Function guifg=#d7afd7 guibg=#292828 gui=none

" Statement
hi Statement guifg=#87afd7 guibg=#292828 gui=none
hi Conditional guifg=#87afd7 guibg=#292828 gui=none
hi Repeat guifg=#87afd7 guibg=#292828 gui=none
hi Label guifg=#87afd7 guibg=#292828 gui=none
hi Operator guifg=#87afd7 guibg=#292828 gui=none
hi Keyword guifg=#87afd7 guibg=#292828 gui=none
hi Exception guifg=#87afd7 guibg=#292828 gui=none

" Preprocessor
hi PreProc guifg=#afd787 guibg=#292828 gui=none
hi Include guifg=#afd787 guibg=#292828 gui=none
hi Define guifg=#afd787 guibg=#292828 gui=none
hi Macro guifg=#afd787 guibg=#292828 gui=none
hi PreCondit guifg=#afd787 guibg=#292828 gui=none

" Type
hi Type guifg=#afafd7 guibg=#292828 gui=none
hi StorageClass guifg=#afafd7 guibg=#292828 gui=none
hi Structure guifg=#afafd7 guibg=#292828 gui=none
hi Typedef guifg=#afafd7 guibg=#292828 gui=none

" Special
hi Special guifg=#d78787 guibg=#292828 gui=none
hi SpecialChar guifg=#d78787 guibg=#292828 gui=none
hi Tag guifg=#d78787 guibg=#292828 gui=none
hi Delimiter guifg=#929190 guibg=#292828 gui=none
hi SpecialComment guifg=#808080 guibg=#292828 gui=none
hi Debug guifg=#d78787 guibg=#292828 gui=none
hi Underlined guifg=#b2b2b2 guibg=#292828 gui=underline
hi Ignore guifg=#262626 guibg=#292828 gui=none
hi Error guifg=#ffffff guibg=#d96160 gui=none
hi Todo guifg=#808080 guibg=#292828 gui=none

" Window
hi StatusLine guifg=#b2b2b2 guibg=#3d3c3c gui=none
hi StatusLineNC guifg=#888888 guibg=#3d3c3c gui=none
hi TabLineSel guifg=#dfdfdf guibg=#504e4f gui=none
hi TabLine guifg=#b2b2b2 guibg=#3d3c3c gui=none
hi TabLineFill guibg=#3d3c3c gui=none
hi VertSplit guifg=#3e3c3c guibg=#3d3c3c gui=none

" Menu
hi PmenuSel guifg=#ffffff guibg=#716e6e gui=none
hi Pmenu guifg=#b2b2b2 guibg=#3d3c3c gui=none
hi PmenuSbar guibg=#595657 gui=none
hi PmenuThumb guibg=#c1b8a6 gui=none
hi WildMenu guifg=#292828 guibg=#9f79f2 gui=none

" Selection
hi Visual guifg=#292828 guibg=#87d7ff gui=none

" Message
hi ErrorMsg guifg=#ff8787 guibg=#292828 gui=none
hi WarningMsg guifg=#b890e0 guibg=#292828 gui=none
hi MoreMsg guifg=#90c67d guibg=#292828 gui=none
hi ModeMsg guifg=#ffd787 guibg=#292828 gui=bold
hi Question guifg=#6db5d5 guibg=#292828 gui=none

" Mark
hi Folded guifg=#808080 guibg=#262525 gui=none
hi EndOfBuffer guifg=#292828 guibg=#292828 gui=none
hi FoldColumn guifg=#5fd7af guibg=#3d3c3c gui=none
hi SignColumn guifg=#f3ba96 guibg=#3d3c3c gui=none
hi ColorColumn guibg=#3d3c3c gui=none
hi LineNr guifg=#808080 guibg=#3d3c3c gui=none
hi MatchParen guifg=#292828 guibg=#ff5486 gui=none

" Terminal
hi TermCursor guifg=#292828 guibg=#a2c678 gui=none
hi TermCursorNC guifg=#292828 guibg=#85a85d gui=none

" QuickFix
hi qfFileName guifg=#b2b2b2 guibg=#292828 gui=none
hi qfLineNr guifg=#808080 guibg=#292828 gui=none

" Cursor
hi CursorLine guibg=#333232 gui=none
hi CursorColumn guibg=#333232 gui=none
hi CursorLineNr guifg=#b2b2b2 guibg=#333232 gui=none

" Search
hi Search guifg=#292828 guibg=#dbb000 gui=none
hi IncSearch guifg=#292828 guibg=#e99938 gui=none

" Diff Mode
hi DiffAdd guifg=#292828 guibg=#77deb1 gui=none
hi DiffChange guifg=#292828 guibg=#b4caf8 gui=none
hi DiffText guifg=#292828 guibg=#6ca5e3 gui=bold
hi DiffDelete guifg=#292828 guibg=#d0839f gui=none

" Spell
hi SpellBad guifg=#ff8787 guibg=#292828 gui=underline
hi SpellCap guifg=#bb8be5 guibg=#292828 gui=underline
hi SpellRare guifg=#f29eb9 guibg=#292828 gui=underline
hi SpellLocal guifg=#eea744 guibg=#292828 gui=underline

" Misc
hi SpecialKey guifg=#87d787 guibg=#292828 gui=none
hi NonText guifg=#e09824 guibg=#292828 gui=none
hi Directory guifg=#8787af guibg=#292828 gui=none
hi Title guifg=#90bec1 gui=none
hi Conceal guifg=#5fd75f guibg=#292828 gui=none
hi Noise guifg=#9e9e9e guibg=#292828 gui=none
hi helpHyperTextJump guifg=#5fafd7 guibg=#292828 gui=none
hi perlSharpBang guifg=#808080 guibg=#292828 gui=none
hi rubySharpBang guifg=#808080 guibg=#292828 gui=none
hi jsFuncCall guifg=#87d7d7 guibg=#292828 gui=none

" Html
hi javaScriptNumber guifg=#d7af5f guibg=#292828 gui=none
hi htmlTag guifg=#afafff guibg=#292828 gui=none
hi htmlEndTag guifg=#afafff guibg=#292828 gui=none
hi htmlTagName guifg=#d787af guibg=#292828 gui=none
hi htmlString guifg=#d7d7af guibg=#292828 gui=none

" Vim
hi vimFold guifg=#808080 guibg=#292828 gui=none
hi vimCommentTitle guifg=#b2b2b2 guibg=#292828 gui=none

" Diff File
hi diffFile guifg=#808080 guibg=#292828 gui=none
hi diffLine guifg=#d7d787 guibg=#292828 gui=none
hi diffAdded guifg=#87af5f guibg=#292828 gui=none
hi diffRemoved guifg=#d787af guibg=#292828 gui=none
hi diffChanged guifg=#d7af5f guibg=#292828 gui=none
hi diffSubname guifg=#d0d0d0 guibg=#292828 gui=none
hi diffOldLine guifg=#8787d7 guibg=#292828 gui=none

" Mail
hi mailSubject guifg=#87afaf guibg=#292828 gui=none
hi mailSignature guifg=#808080 guibg=#292828 gui=none

" Markdown
hi markdownCode guifg=#808080 guibg=#292828 gui=none
hi markdownCodeBlock guifg=#808080 guibg=#292828 gui=none
hi markdownItalic guifg=#d0d0d0 guibg=#292828 gui=none