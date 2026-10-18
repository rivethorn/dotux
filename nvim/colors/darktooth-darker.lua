-- A Neovim port of emacsfodder/emacs-theme-darktooth (darker variant).
-- Gruvbox-inspired, earthy palette with near-black backgrounds.

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.g.colors_name = "darktooth"

local p = {
	-- Backgrounds (darker variant, near-black earthy tones)
	bg = "#0E0E0E",
	bg_hard = "#060607",
	bg_soft = "#181616",
	bg1 = "#22201E",
	bg2 = "#36312E",
	bg3 = "#4C443E",
	bg4 = "#62574E",

	-- Foregrounds
	fg = "#EBDBB2",
	fg0 = "#FDF4C1",
	fg_soft = "#F4E8BA",
	fg2 = "#D5C4A1",
	fg3 = "#BDAE93",
	fg4 = "#A89984",
	fg_dim = "#A89984",
	fg_muted = "#62574E",
	white = "#FFFFFF",

	medium = "#928374",

	-- Accent
	accent = "#17CCD5",
	accent_dim = "#076678",
	accent_alt = "#3FD7E5",

	-- Syntax
	comment = "#928374",
	string = "#528B8B",
	regex = "#8F3F71",
	number = "#BBAA97",
	keyword = "#DD6F48",
	func = "#A89984",
	type = "#66999D",
	variable = "#EBDBB2",
	constant = "#BBAA97",
	operator = "#EBDBB2",
	annotation = "#FE8019",
	param = "#EBDBB2",
	member = "#EBDBB2",
	module = "#83A598",
	macro = "#D3869B",
	builtin = "#FE8019",
	constructor = "#8EC07C",
	tag = "#D3869B",
	attr = "#8EC07C",

	-- Bright
	bright_red = "#FB4933",
	bright_green = "#B8BB26",
	bright_yellow = "#FABD2F",
	bright_blue = "#83A598",
	bright_purple = "#D3869B",
	bright_aqua = "#8EC07C",
	bright_orange = "#FE8019",
	bright_cyan = "#3FD7E5",

	-- Neutral (ANSI)
	neutral_red = "#FB4934",
	neutral_green = "#B8BB26",
	neutral_yellow = "#FABD2F",
	neutral_blue = "#83A598",
	neutral_purple = "#D3869B",
	neutral_cyan = "#17CCD5",

	-- Faded
	faded_red = "#9D0006",
	faded_green = "#79740E",
	faded_yellow = "#B57614",
	faded_blue = "#076678",
	faded_purple = "#8F3F71",
	faded_aqua = "#427B58",
	faded_orange = "#AF3A03",
	faded_cyan = "#00A7AF",

	-- Mid (tinted backgrounds)
	mid_red = "#3F1B1B",
	mid_green = "#1F321C",
	mid_yellow = "#4C3A25",
	mid_blue = "#30434C",
	mid_purple = "#4C3B43",
	mid_aqua = "#394C3D",

	-- Tinted backgrounds
	bg_red = "#421E1E",
	bg_green = "#232B0F",
	bg_yellow = "#4D3B27",
	bg_blue = "#2B3C44",
	bg_purple = "#4E3D45",
	bg_aqua = "#36473A",

	-- Delimiters
	delimiter1 = "#5C7E81",
	delimiter2 = "#837486",
	delimiter3 = "#9C6F68",
	delimiter4 = "#7B665C",

	-- Named
	sienna = "#DD6F48",
	darkslategray4 = "#528B8B",
	lightblue4 = "#66999D",
	burlywood4 = "#BBAA97",
	turquoise4 = "#61ACBB",
}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Editor / UI
hl("Normal", { fg = p.fg, bg = p.bg })
hl("NormalNC", { fg = p.fg, bg = p.bg })
hl("NormalFloat", { fg = p.fg, bg = p.bg_soft })
hl("NormalSB", { fg = p.fg, bg = p.bg })
hl("FloatBorder", { fg = p.bg4, bg = p.bg_soft })
hl("FloatTitle", { fg = p.turquoise4, bg = p.bg_soft, bold = true })
hl("NonText", { fg = p.bg3 })
hl("EndOfBuffer", { fg = p.bg })
hl("Whitespace", { fg = p.bg4 })
hl("SpecialKey", { fg = p.bg3 })
hl("Conceal", { fg = p.bg4 })
hl("Cursor", { fg = p.bg, bg = p.fg0 })
hl("lCursor", { fg = p.bg, bg = p.fg0 })
hl("CursorIM", { fg = p.bg, bg = p.fg0 })
hl("CursorLine", { bg = p.bg1 })
hl("CursorColumn", { bg = p.bg1 })
hl("ColorColumn", { bg = p.bg1 })
hl("LineNr", { fg = p.bg4 })
hl("LineNrAbove", { fg = p.bg4 })
hl("LineNrBelow", { fg = p.bg4 })
hl("CursorLineNr", { fg = p.fg4, bg = p.bg1 })
hl("SignColumn", { fg = p.bg4, bg = p.bg })
hl("FoldColumn", { fg = p.bg4, bg = p.bg })
hl("Folded", { fg = p.medium, bg = p.bg1 })
hl("Visual", { bg = p.mid_blue })
hl("VisualNOS", { bg = p.mid_blue })
hl("Search", { fg = p.fg, bg = p.bg2 })
hl("IncSearch", { fg = p.fg0, bg = p.faded_aqua, bold = true })
hl("CurSearch", { link = "IncSearch" })
hl("hlsearch", { link = "IncSearch" })
hl("MatchParen", { fg = p.fg0, bg = p.faded_blue, bold = true })
hl("Substitute", { fg = p.fg0, bg = p.faded_red })
hl("StatusLine", { fg = p.fg, bg = p.bg_hard })
hl("StatusLineNC", { fg = p.fg4, bg = p.bg2 })
hl("WinSeparator", { fg = p.bg3 })
hl("VertSplit", { fg = p.bg3 })
hl("TabLine", { fg = p.fg, bg = p.bg })
hl("TabLineFill", { bg = p.bg })
hl("TabLineSel", { fg = p.fg0, bg = p.bg })
hl("WinBar", { fg = p.fg2, bg = p.bg })
hl("WinBarNC", { fg = p.fg4, bg = p.bg })
hl("QuickFixLine", { bg = p.mid_blue, bold = true })
hl("MatchWord", { underline = true })

-- Spell
hl("SpellBad", { undercurl = true, sp = p.bright_red })
hl("SpellCap", { undercurl = true, sp = p.bright_blue })
hl("SpellLocal", { undercurl = true, sp = p.bright_aqua })
hl("SpellRare", { undercurl = true, sp = p.bright_purple })

-- Popup menus / completion
hl("Pmenu", { fg = p.fg, bg = p.bg1 })
hl("PmenuSel", { fg = p.fg0, bg = p.faded_blue })
hl("PmenuSbar", { bg = p.bg2 })
hl("PmenuThumb", { bg = p.bg4 })
hl("PmenuKind", { fg = p.func, bg = p.bg1 })
hl("PmenuKindSel", { fg = p.func, bg = p.faded_blue })
hl("PmenuExtra", { fg = p.fg3, bg = p.bg1 })
hl("PmenuExtraSel", { fg = p.fg, bg = p.faded_blue })
hl("PmenuMatch", { fg = p.accent_alt, bold = true })
hl("PmenuMatchSel", { fg = p.accent_alt, bg = p.faded_blue, bold = true })
hl("WildMenu", { fg = p.fg0, bg = p.faded_blue })

-- Messages
hl("ErrorMsg", { fg = p.bright_red })
hl("WarningMsg", { fg = p.bright_yellow, bold = true })
hl("ModeMsg", { fg = p.fg0, bold = true })
hl("MoreMsg", { fg = p.bright_green })
hl("Question", { fg = p.bright_yellow })
hl("Title", { fg = p.bright_cyan, bold = true })
hl("Directory", { fg = p.bright_blue })

-- Vimscript
hl("VimGroup", { fg = p.bright_purple })
hl("VimHighlight", { fg = p.bright_purple })
hl("VimOption", { fg = p.bright_aqua })
hl("VimSetting", { fg = p.bright_aqua })
hl("VimIsCommand", { fg = p.bright_orange })
hl("VimFuncKey", { fg = p.bright_purple })
hl("VimCommand", { fg = p.bright_purple })
hl("VimLet", { fg = p.bright_purple })
hl("VimMap", { fg = p.bright_purple })
hl("VimAutoCmd", { fg = p.bright_purple })
hl("VimAugroupKey", { fg = p.bright_purple })

-- Syntax (legacy groups)
hl("Comment", { fg = p.comment, italic = true })
hl("SpecialComment", { fg = p.comment, bold = true, italic = true })
hl("String", { fg = p.string })
hl("Character", { fg = p.string })
hl("Number", { fg = p.number })
hl("Boolean", { fg = p.constant })
hl("Float", { fg = p.number })
hl("Identifier", { fg = p.variable })
hl("Function", { fg = p.func })
hl("Statement", { fg = p.keyword })
hl("Conditional", { fg = p.keyword })
hl("Repeat", { fg = p.keyword })
hl("Label", { fg = p.keyword })
hl("Operator", { fg = p.operator })
hl("Keyword", { fg = p.keyword })
hl("Exception", { fg = p.keyword })
hl("PreProc", { fg = p.keyword })
hl("Include", { fg = p.keyword })
hl("Define", { fg = p.keyword })
hl("Macro", { fg = p.macro })
hl("PreCondit", { fg = p.keyword })
hl("Type", { fg = p.type })
hl("StorageClass", { fg = p.keyword })
hl("Structure", { fg = p.type })
hl("Typedef", { fg = p.type })
hl("Special", { fg = p.annotation })
hl("SpecialChar", { fg = p.regex })
hl("Tag", { fg = p.tag })
hl("Delimiter", { fg = p.fg })
hl("Debug", { fg = p.bright_red })
hl("Underlined", { underline = true })
hl("Error", { fg = p.bright_red })
hl("Todo", { fg = p.bright_yellow, bold = true })

-- Treesitter
hl("@variable", { fg = p.variable })
hl("@variable.builtin", { fg = p.builtin })
hl("@variable.parameter", { fg = p.param })
hl("@variable.member", { fg = p.member })
hl("@constant", { fg = p.constant })
hl("@constant.builtin", { fg = p.constant })
hl("@constant.macro", { fg = p.constant })
hl("@module", { fg = p.module })
hl("@module.builtin", { fg = p.module })
hl("@label", { fg = p.bright_red })
hl("@string", { fg = p.string })
hl("@string.documentation", { fg = p.string })
hl("@string.regexp", { fg = p.regex })
hl("@string.escape", { fg = p.bright_cyan })
hl("@string.special", { fg = p.bright_cyan })
hl("@string.special.symbol", { fg = p.builtin })
hl("@string.special.path", { fg = p.bright_orange })
hl("@character", { fg = p.string })
hl("@character.special", { fg = p.bright_cyan })
hl("@boolean", { fg = p.constant })
hl("@number", { fg = p.number })
hl("@number.float", { fg = p.number })
hl("@type", { fg = p.type })
hl("@type.builtin", { fg = p.type })
hl("@type.definition", { fg = p.type })
hl("@type.qualifier", { fg = p.type })
hl("@attribute", { fg = p.annotation })
hl("@property", { fg = p.member })
hl("@function", { fg = p.func })
hl("@function.builtin", { fg = p.func })
hl("@function.call", { fg = p.func })
hl("@function.macro", { fg = p.macro })
hl("@function.method", { fg = p.func })
hl("@function.method.call", { fg = p.func })
hl("@constructor", { fg = p.constructor })
hl("@operator", { fg = p.operator })
hl("@keyword", { fg = p.keyword })
hl("@keyword.coroutine", { fg = p.keyword })
hl("@keyword.function", { fg = p.keyword })
hl("@keyword.operator", { fg = p.keyword })
hl("@keyword.import", { fg = p.keyword })
hl("@keyword.type", { fg = p.keyword })
hl("@keyword.modifier", { fg = p.keyword })
hl("@keyword.repeat", { fg = p.keyword })
hl("@keyword.return", { fg = p.keyword })
hl("@keyword.debug", { fg = p.keyword })
hl("@keyword.exception", { fg = p.keyword })
hl("@keyword.conditional", { fg = p.keyword })
hl("@keyword.directive", { fg = p.keyword })
hl("@keyword.directive.define", { fg = p.keyword })
hl("@punctuation.delimiter", { fg = p.fg })
hl("@punctuation.bracket", { fg = p.fg })
hl("@punctuation.special", { fg = p.bright_red })
hl("@comment", { fg = p.comment, italic = true })
hl("@comment.documentation", { fg = p.comment, italic = true })
hl("@comment.error", { fg = p.bright_red })
hl("@comment.warning", { fg = p.bright_yellow })
hl("@comment.todo", { fg = p.bright_green })
hl("@comment.note", { fg = p.bright_blue })
hl("@markup.strong", { bold = true })
hl("@markup.italic", { italic = true })
hl("@markup.strikethrough", { strikethrough = true })
hl("@markup.underline", { underline = true })
hl("@markup.heading", { fg = p.bright_cyan, bold = true })
hl("@markup.heading.1", { fg = p.fg4, bold = true })
hl("@markup.heading.2", { fg = p.fg3, bold = true })
hl("@markup.heading.3", { fg = p.fg2, bold = true })
hl("@markup.heading.4", { fg = p.fg, bold = true })
hl("@markup.heading.5", { fg = p.fg_soft, bold = true })
hl("@markup.heading.6", { fg = p.fg0, bold = true })
hl("@markup.quote", { fg = p.comment, italic = true })
hl("@markup.math", { fg = p.bright_blue })
hl("@markup.link", { fg = p.bright_yellow, underline = true })
hl("@markup.link.label", { fg = p.bright_aqua })
hl("@markup.link.url", { fg = p.bright_blue, underline = true })
hl("@markup.raw", { fg = p.string })
hl("@markup.raw.block", { fg = p.string })
hl("@markup.list", { fg = p.bright_red })
hl("@markup.list.checked", { fg = p.bright_green })
hl("@markup.list.unchecked", { fg = p.medium })
hl("@diff.plus", { fg = p.neutral_green })
hl("@diff.minus", { fg = p.neutral_red })
hl("@diff.delta", { fg = p.fg })
hl("@tag", { fg = p.tag })
hl("@tag.attribute", { fg = p.attr })
hl("@tag.delimiter", { fg = p.fg })

-- Legacy treesitter (nvim-treesitter < 1.0)
hl("TSVariable", { fg = p.variable })
hl("TSVariableBuiltin", { fg = p.builtin })
hl("TSVariableParameter", { fg = p.param })
hl("TSProperty", { fg = p.member })
hl("TSConstant", { fg = p.constant })
hl("TSConstantBuiltin", { fg = p.constant })
hl("TSConstantMacro", { fg = p.constant })
hl("TSSymbol", { fg = p.builtin })
hl("TSLabel", { fg = p.bright_red })
hl("TSString", { fg = p.string })
hl("TSStringRegex", { fg = p.regex })
hl("TSStringEscape", { fg = p.bright_cyan })
hl("TSStringSpecial", { fg = p.bright_cyan })
hl("TSCharacter", { fg = p.string })
hl("TSCharacterSpecial", { fg = p.bright_cyan })
hl("TSBoolean", { fg = p.constant })
hl("TSNumber", { fg = p.number })
hl("TSFloat", { fg = p.number })
hl("TSType", { fg = p.type })
hl("TSTypeBuiltin", { fg = p.type })
hl("TSTypeDefinition", { fg = p.type })
hl("TSAttribute", { fg = p.annotation })
hl("TSFunction", { fg = p.func })
hl("TSFunctionBuiltin", { fg = p.func })
hl("TSFunctionCall", { fg = p.func })
hl("TSMethod", { fg = p.func })
hl("TSMethodCall", { fg = p.func })
hl("TSConstructor", { fg = p.constructor })
hl("TSKeyword", { fg = p.keyword })
hl("TSKeywordFunction", { fg = p.keyword })
hl("TSKeywordOperator", { fg = p.keyword })
hl("TSKeywordReturn", { fg = p.keyword })
hl("TSConditional", { fg = p.keyword })
hl("TSRepeat", { fg = p.keyword })
hl("TSException", { fg = p.keyword })
hl("TSInclude", { fg = p.keyword })
hl("TSNamespace", { fg = p.module })
hl("TSOperator", { fg = p.operator })
hl("TSPunctuationDelimiter", { fg = p.fg })
hl("TSPunctuationBracket", { fg = p.fg })
hl("TSPunctuationSpecial", { fg = p.bright_red })
hl("TSComment", { fg = p.comment, italic = true })
hl("TSSpecialComment", { fg = p.comment, bold = true, italic = true })
hl("TSTitle", { fg = p.bright_cyan, bold = true })
hl("TSURI", { fg = p.bright_blue, underline = true })
hl("TSUnderline", { underline = true })
hl("TSTag", { fg = p.tag })
hl("TSTagAttribute", { fg = p.attr })
hl("TSTagDelimiter", { fg = p.fg })
hl("TSDiffAdd", { fg = p.neutral_green })
hl("TSDiffChange", { fg = p.fg })
hl("TSDiffDelete", { fg = p.neutral_red })
hl("TSAnnotation", { fg = p.annotation })
hl("TSScope", { fg = p.fg0 })
hl("TSDefinition", { underline = true })
hl("TSDefinitionUsage", { underline = true })

-- LSP
hl("LspReferenceText", { underline = true })
hl("LspReferenceRead", { underline = true })
hl("LspReferenceWrite", { underline = true })
hl("LspSignatureActiveParameter", { fg = p.builtin, bold = true })

-- LSP semantic tokens
hl("@lsp.type.class", { fg = p.type })
hl("@lsp.type.decorator", { fg = p.annotation })
hl("@lsp.type.enum", { fg = p.type })
hl("@lsp.type.enumMember", { fg = p.constant })
hl("@lsp.type.event", { fg = p.type })
hl("@lsp.type.function", { fg = p.func })
hl("@lsp.type.interface", { fg = p.bright_aqua })
hl("@lsp.type.keyword", { fg = p.keyword })
hl("@lsp.type.macro", { fg = p.macro })
hl("@lsp.type.method", { fg = p.func })
hl("@lsp.type.modifier", { fg = p.keyword })
hl("@lsp.type.namespace", { fg = p.module })
hl("@lsp.type.parameter", { fg = p.param })
hl("@lsp.type.property", { fg = p.member })
hl("@lsp.type.struct", { fg = p.type })
hl("@lsp.type.type", { fg = p.type })
hl("@lsp.type.typeParameter", { fg = p.type })
hl("@lsp.type.variable", { fg = p.variable })
hl("@lsp.mod.deprecated", { strikethrough = true })
hl("@lsp.mod.defaultLibrary", { fg = p.builtin })
hl("@lsp.typemod.function.defaultLibrary", { fg = p.builtin })
hl("@lsp.typemod.variable.defaultLibrary", { fg = p.builtin })
hl("@lsp.typemod.variable.readonly", { fg = p.constant })
hl("@lsp.typemod.property.readonly", { fg = p.fg2 })
hl("@lsp.typemod.method.defaultLibrary", { fg = p.builtin })
hl("@lsp.typemod.class.readonly", { fg = p.type })

-- Diagnostics
hl("DiagnosticError", { fg = p.bright_red })
hl("DiagnosticWarn", { fg = p.bright_yellow })
hl("DiagnosticInfo", { fg = p.bright_blue })
hl("DiagnosticHint", { fg = p.bright_aqua })
hl("DiagnosticOk", { fg = p.bright_green })
hl("DiagnosticUnderlineError", { undercurl = true, sp = p.bright_red })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = p.bright_yellow })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = p.bright_blue })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = p.bright_aqua })
hl("DiagnosticUnderlineOk", { undercurl = true, sp = p.bright_green })
hl("DiagnosticVirtualTextError", { fg = p.bright_red, bg = p.bg_red })
hl("DiagnosticVirtualTextWarn", { fg = p.bright_yellow, bg = p.bg_yellow })
hl("DiagnosticVirtualTextInfo", { fg = p.bright_blue, bg = p.bg_blue })
hl("DiagnosticVirtualTextHint", { fg = p.bright_aqua, bg = p.bg_aqua })
hl("DiagnosticFloatingError", { fg = p.bright_red })
hl("DiagnosticFloatingWarn", { fg = p.bright_yellow })
hl("DiagnosticFloatingInfo", { fg = p.bright_blue })
hl("DiagnosticFloatingHint", { fg = p.bright_aqua })
hl("DiagnosticFloatingOk", { fg = p.bright_green })
hl("DiagnosticSignError", { fg = p.bright_red })
hl("DiagnosticSignWarn", { fg = p.bright_yellow })
hl("DiagnosticSignInfo", { fg = p.bright_blue })
hl("DiagnosticSignHint", { fg = p.bright_aqua })
hl("DiagnosticSignOk", { fg = p.bright_green })

-- Diff / git
hl("DiffAdd", { fg = p.neutral_green, bg = p.mid_green })
hl("DiffDelete", { fg = p.neutral_red, bg = p.mid_red })
hl("DiffChange", { fg = p.fg })
hl("DiffText", { fg = p.bright_green, bg = p.mid_green })
hl("diffAdded", { fg = p.neutral_green })
hl("diffRemoved", { fg = p.neutral_red })
hl("diffChanged", { fg = p.fg })
hl("diffFile", { bold = true })
hl("diffNewFile", { bold = true })
hl("diffLine", { fg = p.faded_orange })
hl("diffIndexLine", { fg = p.neutral_blue })
hl("diffSubname", { fg = p.fg3 })
hl("GitSignsAdd", { fg = p.faded_green })
hl("GitSignsChange", { fg = p.faded_purple })
hl("GitSignsDelete", { fg = p.faded_red })
hl("SignifySignAdd", { fg = p.faded_green })
hl("SignifySignChange", { fg = p.faded_purple })
hl("SignifySignDelete", { fg = p.faded_red })
hl("gitGutterAdd", { fg = p.faded_green })
hl("gitGutterChange", { fg = p.faded_purple })
hl("gitGutterDelete", { fg = p.faded_red })

-- Debug / DAP
hl("debugPC", { bg = p.mid_blue })
hl("debugBreakpoint", { fg = p.bright_red })
hl("DapStopped", { fg = p.bright_yellow, bg = p.bg_yellow })
hl("DapBreakpoint", { fg = p.bright_red })
hl("DapBreakpointCondition", { fg = p.bright_purple })
hl("DapBreakpointRejected", { fg = p.medium })
hl("DapLogPoint", { fg = p.bright_blue })

-- Telescope
hl("TelescopeNormal", { fg = p.fg, bg = p.bg_soft })
hl("TelescopeSelection", { fg = p.fg0, bg = p.faded_blue })
hl("TelescopeSelectionCaret", { fg = p.bright_aqua, bg = p.faded_blue })
hl("TelescopeMultiSelection", { fg = p.builtin })
hl("TelescopeMatching", { fg = p.bright_yellow, bold = true })
hl("TelescopeBorder", { fg = p.bg4, bg = p.bg_soft })
hl("TelescopePromptBorder", { fg = p.bg4, bg = p.bg_soft })
hl("TelescopeResultsBorder", { fg = p.bg4, bg = p.bg_soft })
hl("TelescopePreviewBorder", { fg = p.bg4, bg = p.bg_soft })
hl("TelescopeTitle", { fg = p.bright_cyan, bg = p.bg_soft, bold = true })
hl("TelescopePromptTitle", { fg = p.bright_green, bg = p.bg_soft, bold = true })
hl("TelescopeResultsTitle", { fg = p.bright_blue, bg = p.bg_soft, bold = true })
hl("TelescopePreviewTitle", { fg = p.bright_purple, bg = p.bg_soft, bold = true })
hl("TelescopePromptPrefix", { fg = p.accent })
hl("TelescopePromptNormal", { fg = p.fg, bg = p.bg_soft })
hl("TelescopeResultsNormal", { fg = p.fg, bg = p.bg_soft })
hl("TelescopePreviewNormal", { fg = p.fg, bg = p.bg_soft })

-- nvim-cmp
hl("CmpItemAbbr", { fg = p.fg })
hl("CmpItemAbbrDeprecated", { fg = p.medium, strikethrough = true })
hl("CmpItemAbbrMatch", { fg = p.bright_yellow })
hl("CmpItemAbbrMatchFuzzy", { fg = p.bright_yellow })
hl("CmpItemKind", { fg = p.bright_aqua })
hl("CmpItemKindClass", { fg = p.type })
hl("CmpItemKindConstructor", { fg = p.constructor })
hl("CmpItemKindField", { fg = p.member })
hl("CmpItemKindFile", { fg = p.fg })
hl("CmpItemKindFunction", { fg = p.func })
hl("CmpItemKindInterface", { fg = p.bright_aqua })
hl("CmpItemKindKeyword", { fg = p.keyword })
hl("CmpItemKindMethod", { fg = p.func })
hl("CmpItemKindModule", { fg = p.module })
hl("CmpItemKindProperty", { fg = p.member })
hl("CmpItemKindStruct", { fg = p.type })
hl("CmpItemKindTypeParameter", { fg = p.type })
hl("CmpItemKindVariable", { fg = p.variable })
hl("CmpItemKindSnippet", { fg = p.bright_cyan })
hl("CmpItemKindText", { fg = p.string })
hl("CmpItemKindEnum", { fg = p.bright_aqua })
hl("CmpItemKindEnumMember", { fg = p.constant })
hl("CmpItemKindConstant", { fg = p.constant })
hl("CmpItemKindEvent", { fg = p.bright_purple })
hl("CmpItemKindOperator", { fg = p.operator })
hl("CmpItemKindReference", { fg = p.builtin })
hl("CmpItemKindValue", { fg = p.builtin })
hl("CmpItemKindFolder", { fg = p.bright_blue })
hl("CmpMenu", { fg = p.fg, bg = p.bg1 })
hl("CmpMenuSel", { fg = p.fg0, bg = p.faded_blue })
hl("CmpMenuBorder", { fg = p.bg4, bg = p.bg1 })

-- blink.cmp
hl("BlinkCmpMenu", { fg = p.fg, bg = p.bg1 })
hl("BlinkCmpMenuBorder", { fg = p.bg4, bg = p.bg1 })
hl("BlinkCmpMenuSelection", { fg = p.fg0, bg = p.faded_blue })
hl("BlinkCmpScrollBarThumb", { bg = p.bg4 })
hl("BlinkCmpScrollBarGutter", { bg = p.bg2 })
hl("BlinkCmpLabel", { fg = p.fg })
hl("BlinkCmpLabelMatch", { fg = p.bright_yellow, bold = true })
hl("BlinkCmpLabelDeprecated", { fg = p.fg_muted, strikethrough = true })
hl("BlinkCmpLabelDetail", { fg = p.fg3 })
hl("BlinkCmpLabelDescription", { fg = p.fg3 })
hl("BlinkCmpSource", { fg = p.fg3 })
hl("BlinkCmpDoc", { fg = p.fg, bg = p.bg_soft })
hl("BlinkCmpDocBorder", { fg = p.bg4, bg = p.bg_soft })

-- nvim-tree
hl("NvimTreeNormal", { fg = p.fg, bg = p.bg })
hl("NvimTreeNormalNC", { fg = p.fg, bg = p.bg })
hl("NvimTreeCursorLine", { bg = p.bg1 })
hl("NvimTreeIndentMarker", { fg = p.bg3 })
hl("NvimTreeFolderName", { fg = p.bright_blue })
hl("NvimTreeOpenedFolderName", { fg = p.bright_blue, bold = true })
hl("NvimTreeEmptyFolderName", { fg = p.medium })
hl("NvimTreeRootFolder", { fg = p.fg2, bold = true })
hl("NvimTreeSpecialFile", { fg = p.builtin, bold = true })
hl("NvimTreeExecFile", { fg = p.bright_green })
hl("NvimTreeImageFile", { fg = p.bright_purple })
hl("NvimTreeSymlink", { fg = p.bright_orange })
hl("NvimTreeGitDirty", { fg = p.faded_purple })
hl("NvimTreeGitNew", { fg = p.faded_green })
hl("NvimTreeGitDeleted", { fg = p.faded_red })
hl("NvimTreeGitRenamed", { fg = p.faded_orange })
hl("NvimTreeGitStaged", { fg = p.faded_cyan })
hl("NvimTreeGitMerge", { fg = p.faded_blue })
hl("NvimTreeGitIgnored", { fg = p.bg4, italic = true })
hl("NvimTreeModified", { fg = p.bright_yellow })

-- Bufferline
hl("BufferLineFill", { bg = p.bg })
hl("BufferLineBackground", { fg = p.fg3, bg = p.bg })
hl("BufferLineBuffer", { fg = p.fg3, bg = p.bg })
hl("BufferLineBufferSelected", { fg = p.fg0, bg = p.bg, bold = true })
hl("BufferLineBufferVisible", { fg = p.fg3, bg = p.bg })
hl("BufferLineCloseButton", { fg = p.fg3, bg = p.bg })
hl("BufferLineCloseButtonSelected", { fg = p.fg0, bg = p.bg })
hl("BufferLineModified", { fg = p.bright_yellow, bg = p.bg })
hl("BufferLineModifiedSelected", { fg = p.bright_yellow, bg = p.bg })
hl("BufferLineSeparator", { fg = p.bg, bg = p.bg })
hl("BufferLineSeparatorSelected", { fg = p.bg, bg = p.bg })
hl("BufferLineIndicatorSelected", { fg = p.accent, bg = p.bg })
hl("BufferLineTab", { fg = p.fg3, bg = p.bg })
hl("BufferLineTabSelected", { fg = p.fg0, bg = p.bg, bold = true })

-- which-key
hl("WhichKey", { fg = p.bright_orange, bold = true })
hl("WhichKeyGroup", { fg = p.bright_purple })
hl("WhichKeyDesc", { fg = p.fg })
hl("WhichKeySeparator", { fg = p.bg3 })
hl("WhichKeyFloat", { bg = p.bg_soft })
hl("WhichKeyBorder", { fg = p.bg4 })

-- Notify
hl("NotifyERRORBorder", { fg = p.bright_red })
hl("NotifyERRORIcon", { fg = p.bright_red })
hl("NotifyERRORTitle", { fg = p.bright_red, bold = true })
hl("NotifyWARNBorder", { fg = p.bright_yellow })
hl("NotifyWARNIcon", { fg = p.bright_yellow })
hl("NotifyWARNTitle", { fg = p.bright_yellow, bold = true })
hl("NotifyINFOBorder", { fg = p.bright_blue })
hl("NotifyINFOIcon", { fg = p.bright_blue })
hl("NotifyINFOTitle", { fg = p.bright_blue, bold = true })

-- Lazy
hl("LazyButton", { fg = p.fg, bg = p.bg2 })
hl("LazyButtonActive", { fg = p.fg0, bg = p.faded_blue, bold = true })
hl("LazyH1", { fg = p.fg0, bg = p.faded_blue, bold = true })
hl("LazyH2", { fg = p.bright_cyan, bold = true })
hl("LazyComment", { fg = p.comment })
hl("LazyProgressDone", { fg = p.bright_green })
hl("LazyProgressTodo", { fg = p.medium })
hl("LazySpecial", { fg = p.bright_aqua })

-- Mason
hl("MasonNormal", { fg = p.fg, bg = p.bg })
hl("MasonHeader", { fg = p.fg0, bg = p.faded_blue, bold = true })
hl("MasonHighlight", { fg = p.bright_blue })
hl("MasonHighlightBlock", { fg = p.bg, bg = p.bright_blue, bold = true })
hl("MasonMuted", { fg = p.medium })

-- mini.indentscope
hl("MiniIndentscopeSymbol", { fg = p.faded_blue })

-- mini.pick / mini.files
hl("MiniPickNormal", { fg = p.fg, bg = p.bg_soft })
hl("MiniPickBorder", { fg = p.bg4 })
hl("MiniPickMatchCurrent", { bg = p.bg2 })
hl("MiniPickPrompt", { fg = p.bright_cyan })
hl("MiniFilesNormal", { fg = p.fg, bg = p.bg })
hl("MiniFilesBorder", { fg = p.bg4 })
hl("MiniFilesCursorLine", { bg = p.bg1 })
hl("MiniFilesDirectory", { fg = p.bright_blue })
hl("MiniFilesTitle", { fg = p.bright_cyan, bold = true })

-- mini.statusline
hl("MiniStatuslineDevinfo", { fg = p.fg3, bg = p.bg2 })
hl("MiniStatuslineFileinfo", { fg = p.fg3, bg = p.bg2 })
hl("MiniStatuslineFilename", { fg = p.fg, bg = p.bg2 })
hl("MiniStatuslineInactive", { fg = p.fg4, bg = p.bg })
hl("MiniStatuslineModeNormal", { fg = p.bg, bg = p.fg4, bold = true })
hl("MiniStatuslineModeInsert", { fg = p.bg, bg = p.bright_green, bold = true })
hl("MiniStatuslineModeVisual", { fg = p.bg, bg = p.bright_purple, bold = true })
hl("MiniStatuslineModeReplace", { fg = p.bg, bg = p.bright_red, bold = true })
hl("MiniStatuslineModeCommand", { fg = p.bg, bg = p.bright_orange, bold = true })

-- mini.starter
hl("MiniStarterHeader", { fg = p.bright_cyan, bold = true })
hl("MiniStarterFooter", { fg = p.medium, italic = true })
hl("MiniStarterItem", { fg = p.fg })
hl("MiniStarterItemBullet", { fg = p.bright_purple })
hl("MiniStarterSection", { fg = p.keyword, bold = true })
hl("MiniStarterQuery", { fg = p.bright_aqua })

-- Fidget
hl("FidgetTitle", { fg = p.bright_blue, bold = true })
hl("FidgetTask", { fg = p.fg3 })

-- Trouble
hl("TroubleNormal", { fg = p.fg, bg = p.bg })

-- Todo comments
hl("TodoBgFix", { fg = p.bg, bg = p.bright_red, bold = true })
hl("TodoBgHack", { fg = p.bg, bg = p.bright_orange, bold = true })
hl("TodoBgTodo", { fg = p.bg, bg = p.bright_blue, bold = true })
hl("TodoBgNote", { fg = p.bg, bg = p.bright_aqua, bold = true })
hl("TodoBgPerf", { fg = p.bg, bg = p.bright_purple, bold = true })
hl("TodoBgWarn", { fg = p.bg, bg = p.bright_yellow, bold = true })

-- Flash / Leap
hl("FlashCurrent", { bg = p.bright_orange, fg = p.bg })
hl("FlashLabel", { bg = p.bright_orange, fg = p.bg, bold = true })
hl("FlashMatch", { bg = p.bg2, fg = p.fg })
hl("FlashBackdrop", { fg = p.bg3 })

-- Indent blankline
hl("IblIndent", { fg = p.bg2 })
hl("IblScope", { fg = p.bg4 })

-- Rainbow delimiters
hl("RainbowDelimiterRed", { fg = p.delimiter1 })
hl("RainbowDelimiterYellow", { fg = p.delimiter2 })
hl("RainbowDelimiterBlue", { fg = p.delimiter3 })
hl("RainbowDelimiterOrange", { fg = p.delimiter4 })
hl("RainbowDelimiterGreen", { fg = p.faded_green })
hl("RainbowDelimiterViolet", { fg = p.bright_purple })
hl("RainbowDelimiterCyan", { fg = p.bright_cyan })

-- Git conflict
hl("GitConflictCurrentLine", { bg = p.mid_green })
hl("GitConflictIncomingLine", { bg = p.mid_blue })
hl("GitConflictAncestorLine", { bg = p.mid_yellow })

-- DAP UI
hl("DapUINormal", { fg = p.fg, bg = p.bg })
hl("DapUIModifiedValue", { fg = p.bright_cyan })
hl("DapUIType", { fg = p.bright_blue })
hl("DapUIScope", { fg = p.bright_purple })
hl("DapUISource", { fg = p.bright_orange })
hl("DapUIBreakpointsPath", { fg = p.bright_blue })
hl("DapUIWatchesValue", { fg = p.bright_cyan })
hl("DapUIWatchesError", { fg = p.bright_red })
hl("DapUIStepOver", { fg = p.bright_blue })
hl("DapUIStepInto", { fg = p.bright_green })
hl("DapUIStepOut", { fg = p.bright_purple })
hl("DapUIPlayPause", { fg = p.bright_green })
hl("DapUIStop", { fg = p.bright_red })
hl("DapUIRestart", { fg = p.bright_green })

-- Terminal colors
vim.g.terminal_color_0 = p.bg1
vim.g.terminal_color_1 = p.neutral_red
vim.g.terminal_color_2 = p.neutral_green
vim.g.terminal_color_3 = p.neutral_yellow
vim.g.terminal_color_4 = p.neutral_blue
vim.g.terminal_color_5 = p.neutral_purple
vim.g.terminal_color_6 = p.neutral_cyan
vim.g.terminal_color_7 = p.fg
vim.g.terminal_color_8 = p.bg3
vim.g.terminal_color_9 = p.bright_red
vim.g.terminal_color_10 = p.bright_green
vim.g.terminal_color_11 = p.bright_yellow
vim.g.terminal_color_12 = p.bright_blue
vim.g.terminal_color_13 = p.bright_purple
vim.g.terminal_color_14 = p.bright_aqua
vim.g.terminal_color_15 = p.fg0
