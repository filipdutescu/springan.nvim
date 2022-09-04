local M = {}

local utils = require'springan.utils'

local colours = {
    -- black
    black = '#1e1f21',
    dim_black = '#303436',
    dark_black = '#111213',

    -- red
    red = '#c16a6d',
    dim_red = '#c97e80',
    dark_red = '#b04a4d',
    diff_red = '#c45454',

    -- green
    green = '#8ab97b',
    dim_green = '#a1c794',
    diff_green = '#75ba5e',

    -- yellow
    yellow = '#c9c76b',
    dim_yellow = '#d3d175',
    diff_yellow = '#bab836',
    dark_yellow = '#d2aa39',

    -- blue
    blue = '#7b82b9',
    dim_blue = '#949ac7',

    -- magenta
    magenta = '#b17aba',
    dim_magenta = '#c193c8',
    diff_magenta = '#805187',

    -- cyan
    cyan = '#7bb0b9',
    dim_cyan = '#94bfc7',

    -- white
    white = '#d3d0cb',
    dim_white = '#e7e5df',
}

M.setup = function()
    vim.g.colors_name = 'springan'
    vim.cmd [[highlight clear]]
    vim.cmd [[syntax reset]]

    utils.highlight('Comment', { fg = colours.dim_cyan, bold = true, italic = true })
    utils.highlight('Constant', { fg = colours.cyan })
    utils.highlight('String', { fg = colours.yellow, bold = true })
    utils.highlight('Character', { fg = colours.green })
    utils.highlight('Number', { fg = colours.dim_magenta })
    utils.highlight('Boolean', { fg = colours.dark_red, bold = true })
    utils.highlight('Float', { fg = colours.dim_magenta })
    utils.highlight('Identifier', { fg = colours.dim_green })
    utils.highlight('Function', { fg = colours.blue })
    utils.highlight('Statement', { fg = colours.magenta })
    utils.highlight('Conditional', { fg = colours.magenta })
    utils.highlight('Repeat', { fg = colours.magenta })
    utils.highlight('Label', { fg = colours.magenta })
    utils.highlight('Operator', { fg = colours.magenta })
    utils.highlight('Keyword', { fg = colours.dim_red })
    utils.highlight('Exception', { fg = colours.magenta })
    utils.highlight('PreProc', { fg = colours.yellow })
    utils.highlight('Include', { fg = colours.blue })
    utils.highlight('Define', { fg = colours.magenta })
    utils.highlight('Macro', { fg = colours.magenta })
    utils.highlight('PreCondit', { fg = colours.yellow })
    utils.highlight('Type', { fg = colours.yellow })
    utils.highlight('StorageClass', { fg = colours.yellow })
    utils.highlight('Structure', { fg = colours.yellow })
    utils.highlight('Typedef', { fg = colours.yellow })
    utils.highlight('Special', { fg = colours.blue })
    utils.highlight('SpecialChar', {})
    utils.highlight('Tag', {})
    utils.highlight('Delimiter', {})
    utils.highlight('SpecialComment', { fg = colours.dim_blue, italic = true })
    utils.highlight('Debug', {})
    utils.highlight('Underlined', { underline = true })
    utils.highlight('Bold', { bold = true })
    utils.highlight('CursorWord0', { bold = true })
    utils.highlight('CursorWord1', { bold = true })
    utils.highlight('Ignore', {})
    utils.highlight('Error', { fg = colours.dark_red })
    utils.highlight('Todo', { fg = colours.magenta })

    utils.highlight('ColorColumn', {})
    utils.highlight('VirtColumn', { fg = colours.dark_black })
    utils.highlight('Conceal', { fg = colours.red })
    utils.highlight('Cursor', { fg = colours.black, bg = colours.green })
    utils.highlight('CursorIM', {})
    utils.highlight('CursorColumn', { bg = colours.dark_black })
    utils.highlight('CursorLine', { bg = colours.dim_black })
    utils.highlight('Directory', { fg = colours.blue })
    utils.highlight('DiffAdd', { fg = colours.black, bg = colours.diff_green })
    utils.highlight('DiffChange', { fg = colours.black, bg = colours.diff_yellow })
    utils.highlight('DiffDelete', { fg = colours.dim_black })
    utils.highlight('DiffDeleteOld', { bg = colours.diff_red })
    utils.highlight('DiffText', { fg = colours.black, bg = colours.diff_yellow })
    utils.highlight('ErrorMsg', { fg = colours.red })
    utils.highlight('VertSplit', { fg = colours.dark_black, bg = colours.dark_black })
    utils.highlight('Folded', { fg = colours.dim_blue, bg = colours.dim_black })
    utils.highlight('FoldColumn', {})
    utils.highlight('SignColumn', {})
    utils.highlight('IncSearch', { fg = colours.dim_blue, bg = colours.green })
    utils.highlight('LineNr', { fg = colours.dim_green })
    utils.highlight('CursorLineNr', { fg = colours.green })
    utils.highlight('MatchParen', { fg = colours.blue, underline = true })
    utils.highlight('ModeMsg', {})
    utils.highlight('MoreMsg', {})
    utils.highlight('NonText', { fg = colours.dim_magenta })
    utils.highlight('Normal', { fg = colours.dim_white, bg = colours.black })
    utils.highlight('Pmenu', { bg = colours.dim_black, blend = 10 })
    utils.highlight('PmenuSel', { fg = colours.dim_black, bg = colours.green, bold = true })
    utils.highlight('PmenuSbar', { bg = colours.blue })
    utils.highlight('PmenuThumb', { bg = colours.dim_white })
    utils.highlight('Question', { fg = colours.magenta })
    utils.highlight('Search', { fg = colours.black, bg = colours.dim_blue })
    utils.highlight('ESearchMatch', { fg = colours.black, bg = colours.dim_blue })
    utils.highlight('QuickFixLine', { bold = true })
    utils.highlight('SpecialKey', { fg = colours.dim_blue })
    utils.highlight('SpellBad', { undercurl = true, sp = colours.dim_blue })
    utils.highlight('SpellCap', { undercurl = true, sp = colours.dim_blue })
    utils.highlight('SpellLocal', { undercurl = true, sp = colours.dim_blue })
    utils.highlight('SpellRare', { undercurl = true, sp = colours.dim_blue })
    utils.highlight('StatusLine', { fg = colours.white, bg = colours.dark_black })
    utils.highlight('StatusLineNC', { fg = colours.dim_blue, bg = colours.dark_black })
    utils.highlight('TabLine', { fg = colours.dim_blue })
    utils.highlight('TabLineFill', {})
    utils.highlight('TabLineSel', { fg = colours.white })
    utils.highlight('Title', { fg = colours.green })
    utils.highlight('Visual', { fg = colours.black, bg = colours.white, blend = 20 })
    utils.highlight('VisualNOS', { bg = colours.dim_black })
    utils.highlight('WarningMsg', { fg = colours.yellow })
    utils.highlight('WildMenu', { fg = colours.black, bg = colours.blue })
    utils.highlight('WinNormalNC', { bg = colours.dark_black })

    -- markdown
    utils.highlight('markdownCode', { fg = colours.yellow })
    utils.highlight('markdownCodeBlockBGBorder', { bg = colours.dark_black })
    utils.highlight('markdownCodeBlockBGBorderSign', { fg = colours.gutter_fg_grey })
    utils.highlight('markdownCodeBlock', { fg = colours.yellow })
    utils.highlight('markdownCodeDelimiter', { fg = colours.dim_white })
    utils.highlight('markdownHeadingDelimiter', { fg = colours.gutter_fg_grey })
    utils.highlight('markdownRule', { fg = colours.comment_grey })
    utils.highlight('markdownHeadingRule', { fg = colours.comment_grey })
    utils.highlight('markdownH1', { fg = colours.green, bold = true, italic = true })
    utils.highlight('markdownH2', { fg = colours.yellow, bold = true, italic = true })
    utils.highlight('markdownH3', { fg = colours.green, bold = true, italic = true })
    utils.highlight('markdownH4', { fg = colours.green, bold = true, italic = true })
    utils.highlight('markdownH5', { fg = colours.green, bold = true, italic = true })
    utils.highlight('markdownH6', { fg = colours.green, bold = true, italic = true })
    utils.highlight('markdownIdDelimiter', { fg = colours.purple })
    utils.highlight('markdownId', { fg = colours.purple })
    utils.highlight('markdownBlockquote', { fg = colours.comment_grey })
    utils.highlight('markdownItalic', { italic = true })
    utils.highlight('markdownBold', { fg = colours.dark_yellow, bold = true })
    utils.highlight('markdownListMarker', { fg = colours.red })
    utils.highlight('markdownOrderedListMarker', { fg = colours.red })
    utils.highlight('markdownIdDeclaration', { fg = colours.blue })
    utils.highlight('markdownLinkText', { fg = colours.blue })
    utils.highlight('markdownLinkDelimiter', { fg = colours.white })
    utils.highlight('markdownUrl', { fg = colours.purple })
    utils.highlight('MDTSFencedCodeBlock', { fg = colours.special_grey })
    utils.highlight('MDTSFencedCodeBlockInfo', { fg = colours.dark_yellow })
    utils.highlight('MDTSHeadlineMarker', { fg = colours.special_grey })
    utils.highlight('MDTSLink', { fg = colours.blue })
    utils.highlight('MDTSLinkText', { fg = colours.white })

    utils.highlight('CodeBlock', { bg = colours.dim_black })
    utils.highlight('HeadlineGreen', { bg = colours.diff_green })
    utils.highlight('HeadlineBlue', { bg = colours.whtie })
    utils.highlight('HeadlineRed', { bg = colours.diff_red })
    utils.highlight('HeadlinePurple', { bg = colours.diff_magenta })
    utils.highlight('HeadlineYellow', { bg = colours.diff_yellow })
    utils.highlight('OrgTSHeadlineLevel1', { fg = colours.green, bold = true })
    utils.highlight('OrgTSHeadlineLevel2', { fg = colours.blue, bold = true })
    utils.highlight('OrgTSHeadlineLevel3', { fg = colours.red, bold = true })
    utils.highlight('OrgTSHeadlineLevel4', { fg = colours.purple, bold = true })
    utils.highlight('OrgTSHeadlineLevel5', { fg = colours.yellow, bold = true })
    utils.highlight('OrgTSHeadlineLevel6', { fg = colours.green, bold = true })
    utils.highlight('OrgTSHeadlineLevel7', { fg = colours.blue, bold = true })
    utils.highlight('OrgTSHeadlineLevel8', { fg = colours.red, bold = true })   utils.highlight('HighlightedyankRegion', { bg = colours.dim_blue })

    -- treesitter

    -- misc
    utils.highlight('TSError', { fg = colours.red })
    utils.highlight('TSPunctDelimiter', { fg = colours.white })
    utils.highlight('TSPunctBracket', { fg = colours.white })
    utils.highlight('TSPunctSpecial', { fg = colours.white })
    -- rainbow paranthesis
    utils.highlight('rainbowcol1', { fg = colours.dim_magenta })

    -- constants
    -- utils.highlight('TSConstant', {})
    utils.highlight('TSConstBuiltin', { fg = colours.dark_yellow, bold = true })
    -- utils.highlight('TSConstMacro', {})
    -- utils.highlight('TSString', {})
    utils.highlight('TSStringRegex', { fg = colours.dark_yellow, bold = true })
    utils.highlight('TSStringEscape', { fg = colours.yellow })
    -- utils.highlight('TSCharacter', {})
    -- utils.highlight('TSNumber', {})
    -- utils.highlight('TSBoolean', {})
    -- utils.highlight('TSFloat', {})
    -- utils.highlight('TSAnnotation', {})
    -- utils.highlight('TSAttribute', {})
    -- utils.highlight('TSNamespace', {})

    -- functions
    utils.highlight('TSFuncBuiltin', { fg = colours.dark_yellow, bold = true })
    -- utils.highlight('TSFunction', {})
    -- utils.highlight('TSFuncMacro', {})
    -- utils.highlight('TSParameter', {})
    -- utils.highlight('TSParameterReference', {})
    -- utils.highlight('TSMethod', {})
    -- utils.highlight('TSField', {})
    -- utils.highlight('TSProperty', {})
    utils.highlight('TSConstructor', { fg = colours.red, bold = true })

    -- -- keywords
    -- utils.highlight('TSConditional', {})
    -- utils.highlight('TSRepeat', {})
    -- utils.highlight('TSLabel', {})
    -- utils.highlight('TSKeyword', {})
    -- utils.highlight('TSKeywordFunction', {})
    -- utils.highlight('TSKeywordOperator', {})
    -- utils.highlight('TSOperator', {})
    -- utils.highlight('TSException', {})
    -- utils.highlight('TSType', {})
    utils.highlight('TSTypeBuiltin', { fg = colours.dark_yellow, bold = true })
    -- utils.highlight('TSStructure', {})
    -- utils.highlight('TSInclude', {})

    -- -- variable
    -- utils.highlight('TSVariable', {})
    utils.highlight('TSVariableBuiltin', { fg = colours.dark_yellow, bold = true })

    -- definitions
    utils.highlight('TSDefinitionUsage', { bold = true })
    utils.highlight('TSDefinition', { bold = true })

    -- -- text
    -- utils.highlight('TSText', {})
    -- utils.highlight('TSStrong', {})
    -- utils.highlight('TSEmphasis', {})
    -- utils.highlight('TSUnderline', {})
    -- utils.highlight('TSTitle', {})
    -- utils.highlight('TSLiteral', {})
    -- utils.highlight('TSURI', {})

    -- -- tags
    -- utils.highlight('TSTag', {})
    -- utils.highlight('TSTagDelimiter', {})

    -- diagnostics
    utils.highlight('DiagnosticError', { fg = colours.dark_red, bold = true })
    utils.highlight('DiagnosticWarn', { fg = colours.magenta, bold = true })
    utils.highlight('DiagnosticInfo', { fg = colours.cyan, bold = true })
    utils.highlight('DiagnosticHint', { fg = colours.white, bold = true })
    utils.highlight('DiagnosticUnderlineError', { sp = colours.dark_red, undercurl = true })
    utils.highlight('DiagnosticUnderlineWarning', { sp = colours.magenta, undercurl = true })
    utils.highlight('DiagnosticUnderlineInfo', { sp = colours.cyan, undercurl = true })
    utils.highlight('DiagnosticUnderlineHint', { sp = colours.white, undercurl = true })

    -- nvim-cmp
    utils.highlight('CmpItemAbbr', { fg = colours.white })
    utils.highlight('CmpItemAbbrDeprecated', { fg = colours.white })
    utils.highlight('CmpItemAbbrMatchFuzzy', { fg = colours.yellow })
    utils.highlight('CmpItemMenu', { fg = colours.white })
    utils.highlight('CmpItemKindMethod', { fg = colours.blue })
    utils.highlight('CmpItemKindFunction', { fg = colours.blue })
    utils.highlight('CmpItemKindVariable', { fg = colours.red })
    utils.highlight('CmpItemKindConstant', { fg = colours.purple })
    utils.highlight('CmpItemKindProperty', { fg = colours.red })
    utils.highlight('CmpItemKindField', { fg = colours.red })
    utils.highlight('CmpItemKindEnumMember', { fg = colours.cyan })
    utils.highlight('CmpItemKindText', { fg = colours.yellow })
    utils.highlight('CmpItemKindClass', { fg = colours.dark_yellow })
    utils.highlight('CmpItemKindInterface', { fg = colours.dark_yellow })
    utils.highlight('CmpItemKindStruct', { fg = colours.dark_yellow })
    utils.highlight('CmpItemKindModule', { fg = colours.cyan })

    -- notify
    utils.highlight('NotifyERRORBorder', { fg = colours.red })
    utils.highlight('NotifyWARNBorder', { fg = colours.yellow })
    utils.highlight('NotifyINFOBorder', { fg = colours.green })
    utils.highlight('NotifyDEBUGBorder', { fg = colours.white })
    utils.highlight('NotifyTRACEBorder', { fg = colours.purple })
    utils.highlight('NotifyERRORIcon', { fg = colours.red })
    utils.highlight('NotifyWARNIcon', { fg = colours.yellow })
    utils.highlight('NotifyINFOIcon', { fg = colours.green })
    utils.highlight('NotifyDEBUGIcon', { fg = colours.white })
    utils.highlight('NotifyTRACEIcon', { fg = colours.purple })
    utils.highlight('NotifyERRORTitle', { fg = colours.red })
    utils.highlight('NotifyWARNTitle', { fg = colours.yellow })
    utils.highlight('NotifyINFOTitle', { fg = colours.green })
    utils.highlight('NotifyDEBUGTitle', { fg = colours.white })
    utils.highlight('NotifyTRACETitle', { fg = colours.purple })

    -- gitsigns
    utils.highlight('GitSignsAdd', { fg = colours.diff_green })
    utils.highlight('GitSignsChange', { fg = colours.diff_yellow })
    utils.highlight('GitSignsDelete', { fg = colours.diff_red })

    -- telescope
    utils.highlight('TelescopeSelection', { fg = colours.dim_red })
end

return M
