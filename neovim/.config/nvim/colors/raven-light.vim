" Raven Light
"  Author: baskerville <nihilhill@gmail.com>
" Created: 2016
" Version: 0.1

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="raven-light"


" Main
hi Normal guifg=#626262 guibg=#fff9ed gui=none
hi Comment guifg=#949494 guibg=#fff9ed gui=none

" Constant
hi Constant guifg=#af5f00 guibg=#fff9ed gui=none
hi String guifg=#af8700 guibg=#fff9ed gui=none
hi Character guifg=#af8700 guibg=#fff9ed gui=none
hi Number guifg=#af5f5f guibg=#fff9ed gui=none
hi Boolean guifg=#af8700 guibg=#fff9ed gui=none
hi Float guifg=#af5f5f guibg=#fff9ed gui=none

" Variable Name
hi Identifier guifg=#af5faf guibg=#fff9ed gui=none
hi Function guifg=#af5faf guibg=#fff9ed gui=none

" Statement
hi Statement guifg=#0087d7 guibg=#fff9ed gui=none
hi Conditional guifg=#0087d7 guibg=#fff9ed gui=none
hi Repeat guifg=#0087d7 guibg=#fff9ed gui=none
hi Label guifg=#0087d7 guibg=#fff9ed gui=none
hi Operator guifg=#0087d7 guibg=#fff9ed gui=none
hi Keyword guifg=#0087d7 guibg=#fff9ed gui=none
hi Exception guifg=#0087d7 guibg=#fff9ed gui=none

" Preprocessor
hi PreProc guifg=#008700 guibg=#fff9ed gui=none
hi Include guifg=#008700 guibg=#fff9ed gui=none
hi Define guifg=#008700 guibg=#fff9ed gui=none
hi Macro guifg=#008700 guibg=#fff9ed gui=none
hi PreCondit guifg=#008700 guibg=#fff9ed gui=none

" Type
hi Type guifg=#5f5faf guibg=#fff9ed gui=none
hi StorageClass guifg=#5f5faf guibg=#fff9ed gui=none
hi Structure guifg=#5f5faf guibg=#fff9ed gui=none
hi Typedef guifg=#5f5faf guibg=#fff9ed gui=none

" Special
hi Special guifg=#d75f5f guibg=#fff9ed gui=none
hi SpecialChar guifg=#d75f5f guibg=#fff9ed gui=none
hi Tag guifg=#d75f5f guibg=#fff9ed gui=none
hi Delimiter guifg=#858483 guibg=#fff9ed gui=none
hi SpecialComment guifg=#d75f5f guibg=#fff9ed gui=none
hi Debug guifg=#d75f5f guibg=#fff9ed gui=none
hi Underlined guifg=#626262 guibg=#fff9ed gui=underline
hi Ignore guifg=#fff9ed guibg=#fff9ed gui=none
hi Error guifg=#fff9ed guibg=#d70000 gui=none
hi Todo guifg=#949494 guibg=#fff9ed gui=none

" Window
hi StatusLine guifg=#626262 guibg=#e3ded3 gui=none
hi StatusLineNC guifg=#888888 guibg=#e3ded3 gui=none
hi TabLine guifg=#626262 guibg=#e3ded3 gui=none
hi TabLineSel guifg=#3a3a3a guibg=#ccc7bc gui=none
hi TabLineFill guibg=#e3ded3 gui=none
hi VertSplit guifg=#e3ded3 guibg=#e3ded3 gui=none

" Menu
hi Pmenu guifg=#626262 guibg=#e3ded3 gui=none
hi PmenuSel guifg=#262626 guibg=#b7b2a9 gui=none
hi PmenuSbar guibg=#d4cfc4 gui=none
hi PmenuThumb guibg=#929090 gui=none
hi WildMenu guifg=#fff9ed guibg=#8158d0 gui=none

" Selection
hi Visual guifg=#fff9ed guibg=#005f87 gui=none

" Message
hi ErrorMsg guifg=#ff005f guibg=#fff9ed gui=none
hi WarningMsg guifg=#af5fd7 guibg=#fff9ed gui=none
hi MoreMsg guifg=#00af5f guibg=#fff9ed gui=none
hi ModeMsg guifg=#df7b00 guibg=#fff9ed gui=bold
hi Question guifg=#00afd7 guibg=#fff9ed gui=none

" Mark
hi Folded guifg=#949494 guibg=#fefdec gui=none
hi EndOfBuffer guifg=#fff9ed guibg=#fff9ed gui=none
hi FoldColumn guifg=#00875f guibg=#e3ded3 gui=none
hi SignColumn guifg=#c76100 guibg=#e3ded3 gui=none
hi ColorColumn guibg=#e3ded3 gui=none
hi LineNr guifg=#949494 guibg=#f5f0e5 gui=none
hi MatchParen guifg=#fff9ed guibg=#c20054 gui=none

" Terminal
hi TermCursor guifg=#fff9ed guibg=#739823 gui=none
hi TermCursorNC guifg=#fff9ed guibg=#8bb33b gui=none

" Cursor
hi CursorLine guibg=#f4efe4 gui=none
hi CursorColumn guibg=#f4efe4 gui=none
hi CursorLineNr guifg=#626262 guibg=#e6e1d6 gui=none

" Search
hi Search guifg=#fff9ed guibg=#c3a200 gui=none
hi IncSearch guifg=#fff9ed guibg=#ec7c38 gui=none

" Diff Mode
hi DiffAdd guifg=#fff9ed guibg=#5faf00 gui=none
hi DiffChange guifg=#fff9ed guibg=#870000 gui=none
hi DiffText guifg=#fff9ed guibg=#d70087 gui=bold
hi DiffDelete guifg=#fff9ed guibg=#626262 gui=none

" Spell
hi SpellBad guifg=#f23766 guibg=#fff9ed gui=underline
hi SpellCap guifg=#b764e2 guibg=#fff9ed gui=underline
hi SpellRare guifg=#da60ad guibg=#fff9ed gui=underline
hi SpellLocal guifg=#d07a35 guibg=#fff9ed gui=underline

" Misc
hi SpecialKey guifg=#5fafd7 guibg=#fff9ed gui=none
hi NonText guifg=#e06d33 guibg=#fff9ed gui=none
hi Directory guifg=#8787d7 guibg=#fff9ed gui=none
hi Title guifg=#008787 gui=none
hi Conceal guifg=#8787af guibg=#fff9ed gui=none
hi Noise guifg=#767676 guibg=#fff9ed gui=none
hi helpHyperTextJump guifg=#0087af guibg=#fff9ed gui=none
hi perlSharpBang guifg=#949494 guibg=#fff9ed gui=none
hi rubySharpBang guifg=#949494 guibg=#fff9ed gui=none
hi jsFuncCall guifg=#008787 guibg=#fff9ed gui=none

" Html
hi javaScriptNumber guifg=#af8700 guibg=#fff9ed gui=none
hi htmlTag guifg=#005fd7 guibg=#fff9ed gui=none
hi htmlEndTag guifg=#005fd7 guibg=#fff9ed gui=none
hi htmlTagName guifg=#d75faf guibg=#fff9ed gui=none
hi htmlString guifg=#af8700 guibg=#fff9ed gui=none

" Vim
hi vimFold guifg=#949494 guibg=#fff9ed gui=none
hi vimCommentTitle guifg=#626262 guibg=#fff9ed gui=none

" Diff File
hi diffFile guifg=#949494 guibg=#fff9ed gui=none
hi diffLine guifg=#626262 guibg=#fff9ed gui=none
hi diffAdded guifg=#008700 guibg=#fff9ed gui=none
hi diffRemoved guifg=#d75faf guibg=#fff9ed gui=none
hi diffChanged guifg=#af8700 guibg=#fff9ed gui=none
hi diffSubname guifg=#4e4e4e guibg=#fff9ed gui=none
hi diffOldLine guifg=#5f87ff guibg=#fff9ed gui=none

" Mail
hi mailSubject guifg=#008787 guibg=#fff9ed gui=none
hi mailSignature guifg=#949494 guibg=#fff9ed gui=none

" Markdown
hi markdownCode guifg=#949494 guibg=#fff9ed gui=none
hi markdownCodeBlock guifg=#949494 guibg=#fff9ed gui=none
hi markdownItalic guifg=#4e4e4e guibg=#fff9ed gui=none