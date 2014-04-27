" Vim color file
" Converted from Textmate theme CiapreBlack using Coloration v0.3.3 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "CiapreBlack"

hi Cursor ctermfg=235 ctermbg=137 cterm=NONE guifg=#222222 guibg=#a89770 gui=NONE
hi Visual ctermfg=NONE ctermbg=23 cterm=NONE guifg=NONE guibg=#1b324a gui=NONE
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#32312d gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#32312d gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#32312d gui=NONE
hi LineNr ctermfg=59 ctermbg=236 cterm=NONE guifg=#726d59 guibg=#32312d gui=NONE
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#504d42 guibg=#504d42 gui=NONE
hi MatchParen ctermfg=131 ctermbg=NONE cterm=underline guifg=#c24d43 guibg=NONE gui=underline
hi StatusLine ctermfg=144 ctermbg=59 cterm=bold guifg=#c2b790 guibg=#504d42 gui=bold
hi StatusLineNC ctermfg=144 ctermbg=59 cterm=NONE guifg=#c2b790 guibg=#504d42 gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=23 cterm=NONE guifg=NONE guibg=#1b324a gui=NONE
hi IncSearch ctermfg=235 ctermbg=143 cterm=NONE guifg=#222222 guibg=#bab972 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi Folded ctermfg=242 ctermbg=235 cterm=NONE guifg=#696969 guibg=#222222 gui=NONE

hi Normal ctermfg=144 ctermbg=235 cterm=NONE guifg=#c2b790 guibg=#222222 gui=NONE
hi Boolean ctermfg=166 ctermbg=NONE cterm=NONE guifg=#db592e guibg=NONE gui=NONE
hi Character ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi Comment ctermfg=242 ctermbg=NONE cterm=NONE guifg=#696969 guibg=NONE gui=NONE
hi Conditional ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi Constant ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi Define ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi DiffAdd ctermfg=144 ctermbg=64 cterm=bold guifg=#c2b790 guibg=#45820c gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8a0707 guibg=NONE gui=NONE
hi DiffChange ctermfg=144 ctermbg=23 cterm=NONE guifg=#c2b790 guibg=#213655 gui=NONE
hi DiffText ctermfg=144 ctermbg=24 cterm=bold guifg=#c2b790 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=15 ctermbg=88 cterm=NONE guifg=#ffffff guibg=#990000 gui=NONE
hi WarningMsg ctermfg=15 ctermbg=88 cterm=NONE guifg=#ffffff guibg=#990000 gui=NONE
hi Float ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi Function ctermfg=179 ctermbg=NONE cterm=NONE guifg=#dea050 guibg=NONE gui=NONE
hi Identifier ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi Keyword ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi Label ctermfg=143 ctermbg=NONE cterm=NONE guifg=#bab972 guibg=NONE gui=NONE
hi NonText ctermfg=250 ctermbg=235 cterm=NONE guifg=#bfbfbf guibg=#2a2928 gui=NONE
hi Number ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi Operator ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi PreProc ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi Special ctermfg=144 ctermbg=NONE cterm=NONE guifg=#c2b790 guibg=NONE gui=NONE
hi SpecialKey ctermfg=250 ctermbg=236 cterm=NONE guifg=#bfbfbf guibg=#32312d gui=NONE
hi Statement ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi StorageClass ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi String ctermfg=143 ctermbg=NONE cterm=NONE guifg=#bab972 guibg=NONE gui=NONE
hi Tag ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a87b60 guibg=NONE gui=NONE
hi Title ctermfg=144 ctermbg=NONE cterm=bold guifg=#c2b790 guibg=NONE gui=bold
hi Todo ctermfg=242 ctermbg=NONE cterm=inverse,bold guifg=#696969 guibg=NONE gui=inverse,bold
hi Type ctermfg=67 ctermbg=NONE cterm=NONE guifg=#6b84a3 guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi rubyFunction ctermfg=179 ctermbg=NONE cterm=NONE guifg=#dea050 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi rubyConstant ctermfg=144 ctermbg=NONE cterm=NONE guifg=#c2b790 guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=143 ctermbg=NONE cterm=NONE guifg=#bab972 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=66 ctermbg=NONE cterm=NONE guifg=#6d948d guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=168 ctermbg=NONE cterm=NONE guifg=#e64976 guibg=NONE gui=NONE
hi rubyInclude ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=168 ctermbg=NONE cterm=NONE guifg=#e64976 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=143 ctermbg=NONE cterm=NONE guifg=#bab972 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=143 ctermbg=NONE cterm=NONE guifg=#bab972 guibg=NONE gui=NONE
hi rubyEscape ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e8bf6a guibg=NONE gui=NONE
hi rubyControl ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi rubyException ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=168 ctermbg=NONE cterm=NONE guifg=#e64976 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=144 ctermbg=NONE cterm=NONE guifg=#c2b790 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=59 ctermbg=NONE cterm=NONE guifg=#5c644c guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=59 ctermbg=NONE cterm=NONE guifg=#5c644c guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=59 ctermbg=NONE cterm=NONE guifg=#5c644c guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=59 ctermbg=NONE cterm=NONE guifg=#5c644c guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=242 ctermbg=NONE cterm=NONE guifg=#696969 guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=59 ctermbg=NONE cterm=NONE guifg=#5c644c guibg=NONE gui=NONE
hi htmlTag ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a87b60 guibg=NONE gui=NONE
hi htmlEndTag ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a87b60 guibg=NONE gui=NONE
hi htmlTagName ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a87b60 guibg=NONE gui=NONE
hi htmlArg ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a87b60 guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=59 ctermbg=NONE cterm=NONE guifg=#5c644c guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a87b60 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=168 ctermbg=NONE cterm=NONE guifg=#e64976 guibg=NONE gui=NONE
hi yamlAlias ctermfg=168 ctermbg=NONE cterm=NONE guifg=#e64976 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=144 ctermbg=234 cterm=NONE guifg=#b9aa99 guibg=#1d1d1d gui=NONE
hi cssURL ctermfg=66 ctermbg=NONE cterm=NONE guifg=#6d948d guibg=NONE gui=NONE
hi cssFunctionName ctermfg=59 ctermbg=NONE cterm=NONE guifg=#5c644c guibg=NONE gui=NONE
hi cssColor ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=66 ctermbg=NONE cterm=NONE guifg=#60827e guibg=NONE gui=NONE
hi cssClassName ctermfg=74 ctermbg=NONE cterm=NONE guifg=#38add8 guibg=NONE gui=NONE
hi cssValueLength ctermfg=131 ctermbg=NONE cterm=NONE guifg=#c24d43 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=131 ctermbg=NONE cterm=NONE guifg=#a94d37 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE