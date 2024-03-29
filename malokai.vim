""
"" Vim color scheme
"" Maintainer: Joseph Yu
""

" hi clear

let color_name = "malokai"
" set t_Co=256
" set background=dark

" if exists("syntax_on")
"   syntax reset
" endif

function s:SetHighlight(name, fg, bg, fontface)
  let l:fontface = a:fontface

  if empty(l:fontface)
    let l:fontface = 'none'
  endif

  if !empty(a:fg)
    exec 'hi ' . a:name . ' guifg=' . a:fg.gui . ' ctermfg=' . a:fg.cterm
  endif

  if !empty(a:bg)
    exec 'hi ' . a:name . ' guibg=' . a:bg.gui . ' ctermbg=' . a:bg.cterm
  endif

  if !empty(l:fontface)
    exec 'hi ' . a:name . ' gui=' . l:fontface . ' cterm=' . l:fontface
  endif
endfunction

let s:purple = { 'gui': '#D787FF', 'cterm': '177' }
let s:red = { 'gui': '#D7005F', 'cterm': '161' }
let s:dark_red = { 'gui': '#D70000', 'cterm': '160' }
let s:green = { 'gui': '#87FF5F', 'cterm': '156' }
let s:cyan = { 'gui': '#87FFFF', 'cterm': '123' }
let s:yellow = { 'gui': '#FFFF87', 'cterm': '228' }
let s:orange = { 'gui': '#FF8700', 'cterm': '208' }

let s:comment = { 'gui': '#535353', 'cterm': '243' }
" let s:error_fg = { 'gui': '#AF5FFF', 'cterm': '135' }
" let s:error_fg = { 'gui': '#D70000', 'cterm': '160' }
let s:error_fg = { 'gui': '#D75F00', 'cterm': '166' }
let s:hint_fg = { 'gui': '#BCBCBC', 'cterm': '250' }
let s:none = { 'gui': 'NONE', 'cterm': 'NONE' }
let s:fg = { 'gui': '#D0D0D0', 'cterm': '252' }
let s:bg = { 'gui': '#1C1C1C', 'cterm': '234' }

let s:folded = { 'gui': '#BCBCBC', 'cterm': '250' }
let s:hl_bg = { 'gui': '#080808', 'cterm': '232' }
let s:warning = { 'gui': '#FF8700', 'cterm': '208' }
let s:line_number_fg = { 'gui': '#949494', 'cterm': '246' }
let s:line_number_bg = { 'gui': '#262626', 'cterm': '235' }

let s:menu_bg = { 'gui': '#303030', 'cterm': '236' }
let s:menu_selected_bg = { 'gui': '#4E4E4E', 'cterm': '239' }
let s:menu_thumb = { 'gui': '#6C6C6C', 'cterm': '242' }
let s:menu_thumb_bg = { 'gui': '#262626', 'cterm': '235' }

let s:select_bg = { 'gui': '#303030', 'cterm': '236'}

let s:tab_bg = { 'gui': '#262626', 'cterm': '235' }
let s:tab_bg_fill = { 'gui': '#080808', 'cterm': '232' }
let s:tab_bg_selected = { 'gui': '#3A3A3A', 'cterm': '237' }

" normal & cursor {{{
call s:SetHighlight('Normal', s:fg, s:bg, '')
call s:SetHighlight('Cursor', '', '', 'reverse')
call s:SetHighlight('CursorIM', '', '', 'reverse')
call s:SetHighlight('CursorColumn', s:none, '', 'reverse')
call s:SetHighlight('CursorLine', s:none, '', '')
" }}}
" diff {{{
call s:SetHighlight('DiffAdd', '', '', '')
call s:SetHighlight('DiffChange', '', '', '')
call s:SetHighlight('DiffDelete', '', '', '')
call s:SetHighlight('DiffText', '', '', '')
" }}}
" fold {{{
call s:SetHighlight('Folded', s:folded, s:bg, '')
call s:SetHighlight('FoldedColumn', s:folded, s:bg, '')
" }}}
" search {{{
call s:SetHighlight('Search', s:none, s:hl_bg, '')
call s:SetHighlight('IncSearch', s:none, s:hl_bg, '')
" }}}
" line number {{{
call s:SetHighlight('LineNr', s:line_number_fg, s:line_number_bg, '')
call s:SetHighlight('CursorLineNr', s:fg, s:line_number_bg, 'bold')
" }}}
" message {{{
call s:SetHighlight('ErrorMsg', s:red, s:none, '')
call s:SetHighlight('WarningMsg', s:warning, s:none, '')
call s:SetHighlight('MoreMsg', s:fg, '', '')
call s:SetHighlight('Question', s:fg, '', '')
" }}}
" popup menu {{{
call s:SetHighlight('Pmenu', s:fg, s:menu_bg, '')
call s:SetHighlight('PmenuSel', s:fg, s:menu_selected_bg, 'bold')
call s:SetHighlight('PmenuSbar', s:menu_thumb_bg, s:menu_thumb_bg, '')
call s:SetHighlight('PmenuThumb', s:menu_thumb, s:menu_thumb, '')
" }}}
" Tabs {{{
call s:SetHighlight('TabLine', s:fg, s:tab_bg, '')
call s:SetHighlight('TabLineFill', s:fg, s:tab_bg_fill, '')
call s:SetHighlight('TabLineSel', s:fg, s:tab_bg_selected, 'bold')
" barbar {{{
call s:SetHighlight('BufferCurrent', s:fg, s:tab_bg_selected, 'bold')
call s:SetHighlight('BufferCurrentIndex', s:fg, s:tab_bg_selected, '')
call s:SetHighlight('BufferCurrentMod', s:fg, s:tab_bg_selected, '')
call s:SetHighlight('BufferCurrentSign', s:green, s:tab_bg_selected, 'bold')
call s:SetHighlight('BufferCurrentTarget', s:fg, s:tab_bg_selected, 'bold')
call s:SetHighlight('BufferCurrentIcon', s:green, s:tab_bg_selected, '')
call s:SetHighlight('BufferVisible', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferVisibleIndex', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferVisibleMod', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferVisibleSign', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferVisibleTarget', s:fg, s:tab_bg, 'bold')
call s:SetHighlight('BufferVisibleIcon', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferInactive', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferInactiveIndex', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferInactiveMod', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferInactiveSign', s:fg, s:tab_bg, '')
call s:SetHighlight('BufferInactiveTarget', s:fg, s:tab_bg, 'bold')
call s:SetHighlight('BufferInactiveIcon', s:red, s:tab_bg, '')
" }}}
" }}}
" visual {{{
call s:SetHighlight('Visual', '', s:select_bg, '')
call s:SetHighlight('VisualNOS', '', s:select_bg, '')
" }}}
" other {{{
call s:SetHighlight('SignColumn', s:fg, s:none, '')
call s:SetHighlight('Directory', s:green, s:none, 'bold')
call s:SetHighlight('NonText', s:green, s:none, '')
call s:SetHighlight('Title', s:fg, '', '')
call s:SetHighlight('MatchParen', s:orange, s:hl_bg, '')
" }}}

" tree-sitter {{{
" comment {{{
call s:SetHighlight('TSComment', s:comment, '', '')
call s:SetHighlight('comment', s:comment, '', '')
" }}}
" misc {{{
call s:SetHighlight('none', '', '', '')
call s:SetHighlight('preproc', s:red, '', 'bold')
call s:SetHighlight('define', s:red, '', 'bold')
" }}}
" constants {{{
call s:SetHighlight('TSBoolean', s:purple, '', '')
call s:SetHighlight('boolean', s:purple, '', '')
call s:SetHighlight('TSCharacter', s:purple, '', '')
call s:SetHighlight('character', s:purple, '', '')
" call s:SetHighlight('character.special', s:purple, '', '')
call s:SetHighlight('TSConstant', s:purple, '', '')
call s:SetHighlight('TSFloat', s:purple, '', '')
call s:SetHighlight('float', s:purple, '', '')
call s:SetHighlight('TSConstBuiltin', s:purple, '', '')
call s:SetHighlight('TSNumber', s:purple, '', '')
call s:SetHighlight('TSString', s:yellow, '', '')
call s:SetHighlight('string', s:yellow, '', '')
call s:SetHighlight('TSStringRegex', s:yellow, '', '')
" call s:SetHighlight('string.special', s:yellow, '', '')
call s:SetHighlight('TSStringEscape', s:purple, '', '')
" call s:SetHighlight('string.escape', s:yellow, '', '')
call s:SetHighlight('TSNamespace', s:purple, '', '')
call s:SetHighlight('namespace', s:purple, '', '')
" }}}
" keywords {{{
call s:SetHighlight('TSException', s:red, '', '')
call s:SetHighlight('exception', s:red, '', '')
call s:SetHighlight('TSInclude', s:red, '', 'bold')
call s:SetHighlight('include', s:red, '', 'bold')
call s:SetHighlight('TSKeyword', s:red, '', 'bold')
call s:SetHighlight('keyword', s:red, '', 'bold')
call s:SetHighlight('TSKeywordFunction', s:red, '', 'bold')
" call s:SetHighlight('keyword.function', s:red, '', 'bold')
call s:SetHighlight('TSKeywordOperator', s:red, '', 'bold')
" call s:SetHighlight('keyword.operator', s:red, '', 'bold')
call s:SetHighlight('TSKeywordReturn', s:red, '', 'bold')
" call s:SetHighlight('keyword.return', s:red, '', 'bold')
call s:SetHighlight('TSRepeat', s:red, '', 'bold')
call s:SetHighlight('repeat', s:red, '', 'bold')
call s:SetHighlight('TSConditional', s:red, '', 'bold')
call s:SetHighlight('conditional', s:red, '', 'bold')
" }}}
" function {{{
call s:SetHighlight('TSFunction', s:green, '', '')
call s:SetHighlight('function', s:green, '', '')
call s:SetHighlight('TSFuncBuiltin', s:green, '', '')
" call s:SetHighlight('function.builtin', s:green, '', '')
call s:SetHighlight('TSFuncMacro', s:green, '', '')
" call s:SetHighlight('function.macro', s:green, '', '')
call s:SetHighlight('TSConstMacro', s:green, '', '')
call s:SetHighlight('TSMethod', s:green, '', '')
call s:SetHighlight('method', s:green, '', '')
" call s:SetHighlight('method.call', s:green, '', '')
" }}}
" parameters {{{
call s:SetHighlight('TSParameter', s:orange, '', '')
call s:SetHighlight('parameter', s:orange, '', '')
call s:SetHighlight('TSProperty', s:green, '', '')
call s:SetHighlight('property', s:green, '', '')
call s:SetHighlight('TSField', s:green, '', '')
call s:SetHighlight('field', s:green, '', '')
call s:SetHighlight('TSSymbol', s:orange, '', '')
call s:SetHighlight('symbol', s:orange, '', '')
call s:SetHighlight('TSParameterReference', s:orange, '', '')
" }}}
" variable {{{
call s:SetHighlight('TSVariable', s:fg, '', '')
call s:SetHighlight('variable', s:fg, '', '')
call s:SetHighlight('TSVariableBuiltin', s:purple, '', '')
" call s:SetHighlight('variable.builtin', s:purple, '', '')
" }}}
" operator {{{
call s:SetHighlight('TSOperator', s:fg, '', '')
call s:SetHighlight('operator', s:fg, '', '')
call s:SetHighlight('TSParameter', s:fg, '', '')
call s:SetHighlight('parameter', s:orange, '', '')
call s:SetHighlight('TSPunctDelimiter', s:fg, '', '')
" call s:SetHighlight('punctuation.delimiter', s:fg, '', '')
call s:SetHighlight('TSPunctBracket', s:fg, '', '')
" call s:SetHighlight('punctuation.bracket', s:fg, '', '')
call s:SetHighlight('TSPunctSpecial', s:fg, '', '')
" call s:SetHighlight('punctuation.special', s:fg, '', '')
" }}}
" label {{{
call s:SetHighlight('TSLabel', s:orange, '', '')
call s:SetHighlight('label', s:orange, '', '')
" }}}
" types {{{
call s:SetHighlight('TSConstructor', s:cyan, '', '')
call s:SetHighlight('constructor', s:cyan, '', '')
call s:SetHighlight('TSType', s:cyan, '', '')
call s:SetHighlight('type', s:cyan, '', '')
call s:SetHighlight('TSTypeBuiltin', s:cyan, '', '')
" call s:SetHighlight('type.builtin', s:cyan, '', '')
" call s:SetHighlight('type.qualifier', s:cyan, '', '')
" call s:SetHighlight('type.definition', s:cyan, '', '')
" }}}
" html {{{
call s:SetHighlight('TSTag', s:cyan, '', '')
call s:SetHighlight('tag', s:cyan, '', '')
call s:SetHighlight('TSTagDelimiter', s:fg, '', '')
" call s:SetHighlight('tag.delimiter', s:fg, '', '')
call s:SetHighlight('TSText', s:fg, '', '')
call s:SetHighlight('text', s:fg, '', '')
call s:SetHighlight('TSStrong', s:fg, '', 'bold')
" call s:SetHighlight('text.strong', s:fg, '', 'bold')
call s:SetHighlight('TSEmphasis', s:fg, '', 'bold')
" call s:SetHighlight('text.emphasis', s:fg, '', 'italic')
call s:SetHighlight('TSUnderline', s:fg, '', 'underline')
" call s:SetHighlight('text.underline', s:fg, '', 'underline')
call s:SetHighlight('TSTitle', s:fg, '', 'bold')
" call s:SetHighlight('text.title', s:fg, '', 'bold')
call s:SetHighlight('TSLiteral', s:fg, '', '')
" call s:SetHighlight('text.literal', s:fg, '', '')
call s:SetHighlight('TSURI', s:cyan, '', '')
" call s:SetHighlight('text.uri', s:cyan, '', '')
" }}}
" error {{{
" call s:SetHighlight('TSError', s:error_fg, s:error_bg, '')
" }}}
" }}}

"	general syntax highlighting {{{
call s:SetHighlight('Constant', s:purple, '', '')
call s:SetHighlight('String', s:yellow, '', '')
call s:SetHighlight('Character', s:purple, '', '')
call s:SetHighlight('Number', s:purple, '', '')
call s:SetHighlight('Boolean', s:purple, '', 'bold')
call s:SetHighlight('Float', s:purple, '', '')

call s:SetHighlight('Identifier', s:orange, '', '')
call s:SetHighlight('Function', s:green, '', '')

call s:SetHighlight('Statement', s:red, '', 'bold')
call s:SetHighlight('Conditional', s:red, '', 'bold')
call s:SetHighlight('Repeat', s:red, '', 'bold')
call s:SetHighlight('Label', s:red, '', 'bold')
call s:SetHighlight('Operator', s:fg, '', '')
call s:SetHighlight('Keyword', s:red, '', 'bold')
call s:SetHighlight('Exception', s:red, '', 'bold')

call s:SetHighlight('PreProc', s:red, '', 'bold')
call s:SetHighlight('Include', s:yellow, '', 'bold')
call s:SetHighlight('Define', s:red, '', 'bold')
call s:SetHighlight('Macro', s:cyan, '', '')
call s:SetHighlight('PreCondit', s:red, '', 'bold')

call s:SetHighlight('Type', s:cyan, '', '')
call s:SetHighlight('StorageClass', s:red, '', 'bold')
call s:SetHighlight('Structure', s:red, '', 'bold')
call s:SetHighlight('Typedef', s:cyan, '', '')

call s:SetHighlight('Special', s:cyan, '', '')
call s:SetHighlight('SpecialChar', s:cyan, '', '')
call s:SetHighlight('Tag', s:green, '', '')
call s:SetHighlight('Delimiter', s:fg, '', '')
call s:SetHighlight('SpecialComment', s:comment, '', '')
call s:SetHighlight('Debug', s:fg, s:none, '')

call s:SetHighlight('Underlined', s:yellow, '', '')
call s:SetHighlight('Comment', s:comment, '', '')
" call s:SetHighlight('Ignore', s:error, '', 'bold')
call s:SetHighlight('Error', s:red, s:bg, 'bold')
call s:SetHighlight('Todo', s:orange, s:bg, '')
call s:SetHighlight('Symbol', s:fg, '', 'bold')
" }}}

" lsp {{{
call s:SetHighlight('DiagnosticError', s:error_fg, s:none, 'bold')
call s:SetHighlight('DiagnosticWarn', s:warning, s:none, 'bold')
call s:SetHighlight('DiagnosticInfo', s:fg, s:none, '')
call s:SetHighlight('DiagnosticHint', s:hint_fg, s:none, '')
call s:SetHighlight('LspDiagnosticsDefaultError', s:error_fg, s:none, 'bold')
call s:SetHighlight('LspDiagnosticsDefaultWarning', s:warning, s:none, 'bold')
call s:SetHighlight('LspDiagnosticsDefaultInformation', s:fg, s:none, '')
" }}}
