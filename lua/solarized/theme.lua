local solarized = require("solarized.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

	local syntax = {
		Type =						{ fg = solarized.yellow }, -- int, long, char, etc.
		StorageClass =				{ fg = solarized.cyan }, -- static, register, volatile, etc.
		Structure =					{ fg = solarized.yellow }, -- struct, union, enum, etc.
		Constant =					{ fg = solarized.purple }, -- any constant
		String =					{ fg = solarized.green, bg = solarized.none, style= 'italic' }, -- Any string
		Character =					{ fg = solarized.orange }, -- any character constant: 'c', '\n'
		Number =					{ fg = solarized.orange }, -- a number constant: 5
		Boolean =					{ fg = solarized.orange }, -- a boolean constant: TRUE, false
		Float =						{ fg = solarized.orange }, -- a floating point constant: 2.3e10
		Statement =					{ fg = solarized.gray }, -- any statement
		Label =						{ fg = solarized.yellow }, -- case, default, etc.
		Operator =					{ fg = solarized.cyan }, -- sizeof", "+", "*", etc.
		Exception =					{ fg = solarized.cyan }, -- try, catch, throw
		PreProc =					{ fg = solarized.yellow }, -- generic Preprocessor
		Include =					{ fg = solarized.blue }, -- preprocessor #include
		Define =					{ fg = solarized.gray }, -- preprocessor #define
		Macro =						{ fg = solarized.cyan }, -- same as Define
		Typedef =					{ fg = solarized.red }, -- A typedef
		PreCondit =					{ fg = solarized.cyan }, -- preprocessor #if, #else, #endif, etc.
		Special =					{ fg = solarized.red }, -- any special symbol
		SpecialChar =				{ fg = solarized.gray }, -- special character in a constant
		Tag =						{ fg = solarized.red }, -- you can use CTRL-] on this
		Delimiter =					{ fg = solarized.cyan }, -- character that needs attention like , or .
		SpecialComment =			{ fg = solarized.gray }, -- special things inside a comment
		Debug =						{ fg = solarized.red }, -- debugging statements
		Underlined =				{ fg = solarized.link, bg = solarized.none, style = 'underline' }, -- text that stands out, HTML links
		Ignore =					{ fg = solarized.disabled }, -- left blank, hidden
		Error =						{ fg = solarized.error, bg = solarized.none, style = 'bold,underline' }, -- any erroneous construct
		Todo =						{ fg = solarized.purple, bg = solarized.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        htmlLink = { fg = solarized.link, style = "underline" },
        htmlH1 = { fg = solarized.cyan, style = "bold" },
        htmlH2 = { fg = solarized.red, style = "bold" },
        htmlH3 = { fg = solarized.green, style = "bold" },
        htmlH4 = { fg = solarized.purple, style = "bold" },
        htmlH5 = { fg = solarized.yellow, style = "bold" },
        markdownH1 = { fg = solarized.cyan, style = "bold" },
        markdownH2 = { fg = solarized.red, style = "bold" },
        markdownH3 = { fg = solarized.green, style = "bold" },
        markdownH1Delimiter = { fg = solarized.cyan },
        markdownH2Delimiter = { fg = solarized.red },
        markdownH3Delimiter = { fg = solarized.green },
	}

	-- Options:

	-- Italic comments
	if vim.g.solarized_italic_comments == true then
		syntax.Comment =		{ fg = solarized.comments, bg = solarized.none, style = 'italic' } -- italic comments
	else
		syntax.Comment =		{ fg = solarized.comments } -- normal comments
	end

	-- Italic Keywords
	if vim.g.solarized_italic_keywords == true then
		syntax.Conditional =		{ fg = solarized.yellow, bg = solarized.none, style = 'italic' } -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{ fg = solarized.yellow, bg = solarized.none, style = 'italic' } -- italic for, do, while, etc.
		syntax.Repeat =				{ fg = solarized.yellow, bg = solarized.none, style = 'italic' } -- italic any other keyword
	else
		syntax.Conditional =		{ fg = solarized.yellow } -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{ fg = solarized.yellow } -- normal for, do, while, etc.
		syntax.Repeat =				{ fg = solarized.yellow } -- normal any other keyword
	end

	-- Italic Function names
	if vim.g.solarized_italic_functions == true then
		syntax.Function =		{ fg = solarized.blue, bg = solarized.none, style = 'italic' } -- italic funtion names
	else
		syntax.Function =		{ fg = solarized.blue } -- normal function names
	end

	if vim.g.solarized_italic_variables == true then
		syntax.Identifier =				{ fg = solarized.gray, bg = solarized.none, style = 'italic' }; -- any variable name
    else
		syntax.Identifier =				{ fg = solarized.gray }; -- any variable name
    end

    return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

	local editor = {
		NormalFloat =			{ fg = solarized.fg, bg = solarized.float }, -- normal text and background color
		ColorColumn =			{ fg = solarized.none, bg = solarized.active }, --  used for the columns set with 'colorcolumn'
		Conceal =				{ fg = solarized.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				{ fg = solarized.cursor, bg = solarized.none, style = 'reverse' }, -- the character under the cursor
		CursorIM =				{ fg = solarized.cursor, bg = solarized.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
		Directory =				{ fg = solarized.blue, bg = solarized.none }, -- directory names (and other special names in listings)
		DiffAdd =				{ fg = solarized.green, bg = solarized.none, style = 'reverse' }, -- diff mode: Added line
		DiffChange =			{ fg = solarized.orange, bg = solarized.none, style = 'reverse' }, --  diff mode: Changed line
		DiffDelete =			{ fg = solarized.red, bg = solarized.none, style = 'reverse' }, -- diff mode: Deleted line
		DiffText =				{ fg = solarized.purple, bg = solarized.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
		EndOfBuffer =			{ fg = solarized.disabled },
		ErrorMsg =				{ fg = solarized.none },
		Folded =				{ fg = solarized.disabled, bg = solarized.none, style = 'italic' },
		FoldColumn =			{ fg = solarized.blue },
		IncSearch =				{ fg = solarized.highlight, bg = solarized.white, style = 'reverse' },
		LineNr =				{ fg = solarized.line_numbers, bg = solarized.bg_alt },
		CursorLineNr =			{ fg = solarized.accent },
		MatchParen =			{ fg = solarized.purple, bg = solarized.none, style = 'bold' },
		ModeMsg =				{ fg = solarized.accent },
		MoreMsg =				{ fg = solarized.accent },
		NonText =				{ fg = solarized.disabled },
		Pmenu =					{ fg = solarized.fg, bg = solarized.none },
		PmenuSel =				{ fg = solarized.accent, bg = solarized.active },
		PmenuSbar =				{ fg = solarized.text, bg = solarized.contrast },
		PmenuThumb =			{ fg = solarized.fg, bg = solarized.accent },
		Question =				{ fg = solarized.green },
		QuickFixLine =			{ fg = solarized.highlight, bg = solarized.white, style = 'reverse' },
		qfLineNr =				{ fg = solarized.highlight, bg = solarized.white, style = 'reverse' },
		Search =				{ fg = solarized.highlight, bg = solarized.white, style = 'reverse' },
		SpecialKey =			{ fg = solarized.yellow },
		SpellBad =				{ fg = solarized.red, bg = solarized.none, style = 'italic,undercurl' },
		SpellCap =				{ fg = solarized.blue, bg = solarized.none, style = 'italic,undercurl' },
		SpellLocal =			{ fg = solarized.cyan, bg = solarized.none, style = 'italic,undercurl' },
		SpellRare =				{ fg = solarized.yellow, bg = solarized.none, style = 'italic,undercurl' },
		StatusLine =			{ fg = solarized.fg, bg = solarized.contrast },
		StatusLineNC =  		{ fg = solarized.text, bg = solarized.disabled },
		StatusLineTerm =		{ fg = solarized.fg, bg = solarized.contrast },
		StatusLineTermNC =		{ fg = solarized.text, bg = solarized.disabled },
		TabLineFill =			{ fg = solarized.fg },
		TablineSel =			{ fg = solarized.bg, bg = solarized.accent },
		Tabline =				{ fg = solarized.fg },
		Title =					{ fg = solarized.green, bg = solarized.none, style = 'bold' },
		Visual =				{ fg = solarized.none, bg = solarized.selection },
		VisualNOS =				{ fg = solarized.none, bg = solarized.selection },
		WarningMsg =			{ fg = solarized.purple },
		WildMenu =				{ fg = solarized.orange, bg = solarized.none, style = 'bold' },
		CursorColumn =			{ fg = solarized.none, bg = solarized.active },
		CursorLine =			{ fg = solarized.none, bg = solarized.bg_alt },
		ToolbarLine =			{ fg = solarized.fg, bg = solarized.bg_alt },
		ToolbarButton =			{ fg = solarized.fg, bg = solarized.none, style = 'bold' },
		NormalMode =			{ fg = solarized.accent, bg = solarized.none, style = 'reverse' },
		InsertMode =			{ fg = solarized.green, bg = solarized.none, style = 'reverse' },
		ReplacelMode =			{ fg = solarized.red, bg = solarized.none, style = 'reverse' },
		VisualMode =			{ fg = solarized.yellow, bg = solarized.none, style = 'reverse' },
		CommandMode =			{ fg = solarized.gray, bg = solarized.none, style = 'reverse' },
		Warnings =				{ fg = solarized.purple },

        healthError =           { fg = solarized.error },
        healthSuccess =         { fg = solarized.green },
        healthWarning =         { fg = solarized.purple },

        -- Dashboard
        DashboardShortCut =                     { fg = solarized.gray },
        DashboardHeader =                       { fg = solarized.gray },
        DashboardCenter =                       { fg = solarized.gray },
        DashboardFooter =                       { fg = solarized.green, style = "italic" },

	}

    -- Options:

    --Set transparent background
    if vim.g.solarized_disable_background == true then
		editor.Normal =				{ fg = solarized.fg, bg = solarized.none } -- normal text and background color
		editor.SignColumn =			{ fg = solarized.fg, bg = solarized.none }
    else
		editor.Normal =				{ fg = solarized.fg, bg = solarized.bg } -- normal text and background color
		editor.SignColumn =			{ fg = solarized.fg, bg = solarized.bg }
    end

    -- Remove window split borders
    if vim.g.solarized_borders == true then
		editor.VertSplit =				{ fg = solarized.border }
    else
		editor.VertSplit =				{ fg = solarized.bg }
    end

    return editor
end

theme.loadTerminal = function ()

	vim.g.terminal_color_0 = solarized.black
	vim.g.terminal_color_1 = solarized.red
	vim.g.terminal_color_2 = solarized.green
	vim.g.terminal_color_3 = solarized.purple
	vim.g.terminal_color_4 = solarized.blue
	vim.g.terminal_color_5 = solarized.yellow
	vim.g.terminal_color_6 = solarized.cyan
	vim.g.terminal_color_7 = solarized.white
	vim.g.terminal_color_8 = solarized.gray
	vim.g.terminal_color_9 = solarized.red
	vim.g.terminal_color_10 = solarized.green
	vim.g.terminal_color_11 = solarized.purple
	vim.g.terminal_color_12 = solarized.blue
	vim.g.terminal_color_13 = solarized.yellow
	vim.g.terminal_color_14 = solarized.cyan
	vim.g.terminal_color_15 = solarized.white

end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

    local treesitter = {
        ['@attribute'] =             { fg = solarized.purple },    -- Attribute annotations (e.g. Rust lifetimes).
        ['@attribute.builtin'] =     { fg = solarized.purple, style = 'italic' },    -- Builtin annotations (e.g. @property in Python).
        ['@boolean']=                { fg = solarized.orange },    -- For booleans.
        ['@character']=              { fg = solarized.orange },    -- For characters.
        ['@character.special']=      { fg = solarized.orange },    -- For characters.
        ['@constructor'] =           { fg = solarized.red }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        ['@constant'] =              { fg = solarized.purple },    -- For constants
        ['@constant.builtin'] =      { fg = solarized.red },    -- For constant that are built in the language: `nil` in Lua.
        ['@constant.macro'] =        { fg = solarized.blue },    -- For constants that are defined by macros: `NULL` in C.
        ['@label'] =                 { fg = solarized.red }, -- For labels: `label:` in C and `:label:` in Lua.
        ['@module'] =                { fg = solarized.purple },    -- For identifiers referring to modules and namespaces.
        ['@module.builtin'] =        { fg = solarized.red },    -- For identifiers referring to modules and namespaces.
        ['@number'] =                { fg = solarized.red },    -- For all numbers
        ['@number.float'] =          { fg = solarized.red },    -- For floats.
        ['@operator'] =              { fg = solarized.text_hl }, -- For any operator: `+`, but also `->` and `*` in C.
        ['@property'] =              { fg = solarized.text_hl, style = 'italic' },
        ['@punctuation.delimiter'] = { fg = solarized.red }, -- For delimiters ie: `.`
        ['@punctuation.bracket'] =   { fg = solarized.red }, -- For brackets and parens.
        ['@punctuation.special'] =   { fg = solarized.red, style = 'bold' }, -- For special punctutation that does not fall in the catagories before.
        ['@type'] =                  { fg = solarized.yellow }, -- For types and type annotations.
        ['@type.builtin'] =          { fg = solarized.red, style = 'italic' }, -- For builtin types.
        ['@type.definition'] =       { fg = solarized.yellow, style = 'italic' }, -- For identifiers in type definitions (e.g. typedef in C).
        ['@tag'] =                   { fg = solarized.red, style = 'bold' },    -- Tags like html tag names.
        ['@tag.builtin'] =           { fg = solarized.red, style = 'bold' },    -- Tags like html tag names.
        ['@tag.attribute'] =         { fg = solarized.red, style = 'bold' },    -- Tags like html tag names.
        ['@tag.delimiter'] =         { fg = solarized.purple },    -- Tag delimiter like `<` `>` `/`

		-- Those comment types are not affected by the solarized_italic_comments variable:
		['@comment.error'] =         { fg = solarized.red, style = 'bold' },
		['@comment.warning'] =       { fg = solarized.orange, style = 'bold' },
		['@comment.todo'] =          { fg = solarized.purple, style = 'bold,italic' },
		['@comment.note'] =          { fg = solarized.green, style = 'bold' },

		-- Markup styles:
        ['@markup.strong'] =         { fg = solarized.text, bg = solarized.none, style = 'bold' },
        ['@markup.italic'] =         { fg = solarized.text, bg = solarized.none, style = 'italic' },
        ['@markup.strikethrough'] =  { fg = solarized.text, bg = solarized.none, style = 'strikethrough' },
        ['@markup.underline'] =      { fg = solarized.text, bg = solarized.none, style = 'underline' },
		-- Text structure:
        ['@markup.heading'] =        { fg = solarized.red, bg = solarized.none, style = 'bold' },
        ['@markup.heading.1'] =      { fg = solarized.orange, bg = solarized.none, style = 'bold' },
        ['@markup.heading.2'] =      { fg = solarized.yellow, bg = solarized.none, style = 'bold' },
        ['@markup.heading.3'] =      { fg = solarized.green, bg = solarized.none, style = 'italic' },
        ['@markup.heading.4'] =      { fg = solarized.cyan, bg = solarized.none, style = 'italic' },
        ['@markup.heading.5'] =      { fg = solarized.blue, bg = solarized.none, style = 'italic' },
        ['@markup.heading.6'] =      { fg = solarized.violet, bg = solarized.none, style = 'italic' },
		-- Special blocks/lines:
        ['@markup.quote'] =          { fg = solarized.cyan, bg = solarized.none, style = 'italic' },
        ['@markup.math'] =           { fg = solarized.yellow, bg = solarized.none },
		-- Links:
        ['@markup.link'] =           { fg = solarized.link, bg = solarized.none },
        ['@markup.link.label'] =     { fg = solarized.link, bg = solarized.none, style = 'italic' },
        ['@markup.link.url'] =       { fg = solarized.link, bg = solarized.none, style = 'underline' },
        ['@markup.raw'] =            { fg = solarized.orange, bg = solarized.none }, -- Raw text in a markup language.
        ['@markup.raw.block'] =      { fg = solarized.orange, bg = solarized.none }, -- Same as above, in a block.
		-- List items:
        ['@markup.list'] =           { fg = solarized.magenta, bg = solarized.none },
        ['@markup.list.checked'] =   { fg = solarized.magenta, bg = solarized.none, style = 'strikethrough' },
        ['@markup.list.unchecked'] = { fg = solarized.magenta, bg = solarized.none },

		-- All string types:
        ['@string'] =                { fg = solarized.green },
        ['@string.documentation'] =  { fg = solarized.text_alt, style = 'bold,italic' },
        ['@string.regexp'] =         { fg = solarized.green, style = 'italic' }, -- For regexes.
        ['@string.escape'] =         { fg = solarized.disabled }, -- For escape characters within a string.
        ['@string.special'] =        { fg = solarized.disabled },
        ['@string.special.symbol'] = { fg = solarized.green, style = 'bold' },
        ['@string.special.path'] =   { fg = solarized.text },
        ['@string.special.url'] =    { fg = solarized.link }, -- Any URI like a link or email in a markup language.
    }

    -- Options:

    -- Italic comments:
    if vim.g.solarized_italic_comments == true then
        treesitter['@comment'] =                    { fg = solarized.comments , bg = solarized.none, style = 'italic' }    -- For comment blocks.
        treesitter['@comment.documentation'] =      { fg = solarized.comments , bg = solarized.none, style = 'bold,italic' }    -- For comment blocks.
    else
        treesitter['@comment'] =                    { fg = solarized.comments }    -- For comment blocks.
        treesitter['@comment.documentation'] =      { fg = solarized.comments }    -- For comment blocks.
    end

	-- Italic keywords:
    if vim.g.solarized_italic_keywords == true then
		treesitter['@keyword'] =                  { fg = solarized.green, style = 'italic' }      -- General keywords not in the categories below.
		treesitter['@keyword.coroutine'] =        { fg = solarized.green, style = 'italic' }      -- Async/await and related keywords
		treesitter['@keyword.function'] =         { fg = solarized.blue, style = 'bold,italic' } -- Keyword to define a function (e.g. def in lua).
		treesitter['@keyword.operator'] =         { fg = solarized.green, style = 'italic' }      -- Natural-text operators: 'and', 'or', 'is' ...
		treesitter['@keyword.import'] =           { fg = solarized.green, style = 'bold,italic' } -- Inclusion/export of modules/names.
		treesitter['@keyword.type'] =             { fg = solarized.green, style = 'italic' }      -- Keywords for forming types (struct, enum)
		treesitter['@keyword.modifier'] =         { fg = solarized.green, style = 'italic' }      -- Modifiers for another keyword: const, public...
		treesitter['@keyword.repeat'] =           { fg = solarized.green, style = 'bold,italic' } -- Loop-related keywords.
		treesitter['@keyword.return'] =           { fg = solarized.blue, style = 'bold,italic' } -- Return, yield and similar.
		treesitter['@keyword.debug'] =            { fg = solarized.green, style = 'italic' }      -- Debugging related (???) See :h treesitter.
		treesitter['@keyword.exception'] =        { fg = solarized.green, style = 'bold,italic' } -- Throw/catch keywords, and related.
		treesitter['@keyword.directive'] =        { fg = solarized.purple, style = 'bold,italic' } -- Throw/catch keywords, and related.
		treesitter['@keyword.directive.define'] = { fg = solarized.purple, style = 'bold,italic' } -- Throw/catch keywords, and related.
    else
		treesitter['@keyword'] =                  { fg = solarized.green }
		treesitter['@keyword.coroutine'] =        { fg = solarized.green }
		treesitter['@keyword.function'] =         { fg = solarized.blue, style = 'bold' }
		treesitter['@keyword.operator'] =         { fg = solarized.green }
		treesitter['@keyword.import'] =           { fg = solarized.green, style = 'bold' }
		treesitter['@keyword.type'] =             { fg = solarized.green }
		treesitter['@keyword.modifier'] =         { fg = solarized.green }
		treesitter['@keyword.repeat'] =           { fg = solarized.green, style = 'bold' }
		treesitter['@keyword.return'] =           { fg = solarized.blue, style = 'bold' }
		treesitter['@keyword.debug'] =            { fg = solarized.green }
		treesitter['@keyword.exception'] =        { fg = solarized.green, style = 'bold' }
		treesitter['@keyword.directive'] =        { fg = solarized.purple, style = 'bold' } -- Throw/catch keywords, and related.
		treesitter['@keyword.directive.define'] = { fg = solarized.purple, style = 'bold' } -- Throw/catch keywords, and related.
    end

	-- Functions: function[.builtin], function.call, function.macro
    if vim.g.solarized_italic_functions == true then
        treesitter['@function'] =                   { fg = solarized.blue, style = 'bold,italic' }    -- For fuction (calls and definitions).
        treesitter['@function.call'] =              { fg = solarized.blue, style = 'italic' }    -- For fuction (calls and definitions).
        treesitter['@function.method'] =            { fg = solarized.blue, style = 'bold,italic' }    -- For method calls and definitions.
        treesitter['@function.method.call'] =       { fg = solarized.blue, style = 'italic' }    -- For method calls and definitions.
        treesitter['@function.macro'] =             { fg = solarized.purple, style = 'bold,italic' }    -- For method calls and definitions.
        treesitter['@function.builtin'] =           { fg = solarized.red, style = 'italic' }    -- For builtin functions: `table.insert` in Lua.
    else
        treesitter['@function'] =                   { fg = solarized.blue, style = 'bold' }    -- For fuction (calls and definitions).
        treesitter['@function.call'] =              { fg = solarized.blue }    -- For fuction (calls and definitions).
        treesitter['@function.method'] =            { fg = solarized.blue, style = 'bold' }    -- For method calls and definitions.
        treesitter['@function.method.call'] =       { fg = solarized.blue }    -- For method calls and definitions.
        treesitter['@function.macro'] =             { fg = solarized.purple, style = 'italic' }    -- For method calls and definitions.
        treesitter['@function.builtin'] =           { fg = solarized.red }    -- For builtin functions: `table.insert` in Lua.
    end

	-- Variables: variable[.builtin], variable.parameter[.builtin], variable.member
    if vim.g.solarized_italic_variables == true then
        treesitter['@variable'] =                   { fg = solarized.text, style = 'italic' } -- Any variable name that does not have another highlight.
        treesitter['@variable.builtin'] =           { fg = solarized.red, style = 'bold,italic' } -- Variable names that are defined by the languages, like `this` or `self`.
        treesitter['@variable.parameter'] =         { fg = solarized.text, style = 'italic' }
        treesitter['@variable.parameter.builtin'] = { fg = solarized.red, style = 'bold,italic' }
        treesitter['@variable.member'] =            { fg = solarized.text_hl, style = 'italic' }
    else
        treesitter['@variable'] =                   { fg = solarized.text } -- Any variable name that does not have another highlight.
        treesitter['@variable.builtin'] =           { fg = solarized.red, style = 'bold' } -- Variable names that are defined by the languages, like `this` or `self`.
        treesitter['@variable.parameter'] =         { fg = solarized.text }
        treesitter['@variable.parameter.builtin'] = { fg = solarized.red, style = 'bold' }
        treesitter['@variable.member'] =            { fg = solarized.text_hl }
    end

    return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError =            { fg = solarized.error }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError =               { fg = solarized.error }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError =           { fg = solarized.error }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError =        { fg = solarized.error }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError =          { style = 'undercurl', sp = solarized.error }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning =          { fg = solarized.purple }, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning =             { fg = solarized.purple }, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning =         { fg = solarized.purple }, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning =      { fg = solarized.purple }, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning =        { style = 'undercurl', sp = solarized.purple }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation =      { fg = solarized.paleblue }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation =         { fg = solarized.paleblue },  -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation =     { fg = solarized.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation =  { fg = solarized.paleblue }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation =    { style = 'undercurl', sp = solarized.paleblue }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint =             { fg = solarized.yellow },  -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint =                { fg = solarized.yellow }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint =            { fg = solarized.yellow }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint =         { fg = solarized.yellow }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint =           { style = 'undercurl', sp = solarized.paleblue }, -- used to underline "Hint" diagnostics.
        LspReferenceText =                      { fg = solarized.accent, bg = solarized.highlight }, -- used for highlighting "text" references
        LspReferenceRead =                      { fg = solarized.accent, bg = solarized.highlight }, -- used for highlighting "read" references
        LspReferenceWrite =                     { fg = solarized.accent, bg = solarized.highlight }, -- used for highlighting "write" references
    }

    return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText =                        { fg = solarized.text },
        LspTroubleCount =                       { fg = solarized.yellow, bg = solarized.active },
        LspTroubleNormal =                      { fg = solarized.fg, bg = solarized.sidebar },

        -- Diff
        diffAdded =                             { fg = solarized.green },
        diffRemoved =                           { fg = solarized.red },
        diffChanged =                           { fg = solarized.purple },
        diffOldFile =                           { fg = solarized.yelow },
        diffNewFile =                           { fg = solarized.orange },
        diffFile =                              { fg = solarized.blue },
        diffLine =                              { fg = solarized.comments },
        diffIndexLine =                         { fg = solarized.yellow },

        -- Neogit
        NeogitBranch =                          { fg = solarized.paleblue },
        NeogitRemote =                          { fg = solarized.yellow },
        NeogitHunkHeader =                      { fg = solarized.fg, bg = solarized.highlight },
        NeogitHunkHeaderHighlight =             { fg = solarized.blue, bg = solarized.contrast },
        NeogitDiffContextHighlight =            { fg = solarized.text, bg = solarized.contrast },
        NeogitDiffDeleteHighlight =             { fg = solarized.red },
        NeogitDiffAddHighlight =                { fg = solarized.green },

        -- GitGutter
        GitGutterAdd =                          { fg = solarized.green }, -- diff mode: Added line |diff.txt|
        GitGutterChange =                       { fg = solarized.purple }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete =                       { fg = solarized.red }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd =                           { fg = solarized.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr =                         { fg = solarized.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn =                         { fg = solarized.green }, -- diff mode: Added line |diff.txt|
        GitSignsChange =                        { fg = solarized.purple }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr =                      { fg = solarized.purple }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn =                      { fg = solarized.purple }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete =                        { fg = solarized.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr =                      { fg = solarized.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn =                      { fg = solarized.red }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopePromptBorder =                 { fg = solarized.cyan },
        TelescopeResultsBorder =                { fg = solarized.yellow },
        TelescopePreviewBorder =                { fg = solarized.green },
        TelescopeSelectionCaret =               { fg = solarized.yellow },
        TelescopeSelection =                    { fg = solarized.yellow },
        TelescopeMatching =                     { fg = solarized.cyan },
        TelescopeNormal =                       { fg = solarized.fg, bg = solarized.float },

        -- NvimTree
        NvimTreeRootFolder =                    { fg = solarized.blue, style = "bold" },
        NvimTreeGitDirty =                      { fg = solarized.purple },
        NvimTreeGitNew =                        { fg = solarized.green },
        NvimTreeImageFile =                     { fg = solarized.purple },
        NvimTreeExecFile =                      { fg = solarized.green },
        NvimTreeSpecialFile =                   { fg = solarized.yellow , style = "underline" },
        NvimTreeFolderName=                     { fg = solarized.paleblue },
        NvimTreeEmptyFolderName=                { fg = solarized.disabled },
        NvimTreeFolderIcon=                     { fg = solarized.accent },
        NvimTreeIndentMarker =                  { fg  = solarized.disabled },
        LspDiagnosticsError =                   { fg = solarized.error },
        LspDiagnosticsWarning =                 { fg = solarized.purple },
        LspDiagnosticsInformation =             { fg = solarized.paleblue },
        LspDiagnosticsHint =                    { fg = solarized.yellow },

        -- WhichKey
        WhichKey =                              { fg = solarized.accent , style = 'bold'},
        WhichKeyGroup =                         { fg = solarized.text },
        WhichKeyDesc =                          { fg = solarized.blue, style = 'italic' },
        WhichKeySeperator =                     { fg = solarized.fg },
        WhichKeyFloating =                      { bg = solarized.float },
        WhichKeyFloat =                         { bg = solarized.float },

        -- LspSaga
        DiagnosticError =                       { fg = solarized.error },
        DiagnosticWarning =                     { fg = solarized.purple },
        DiagnosticInformation =                 { fg = solarized.paleblue },
        DiagnosticHint =                        { fg = solarized.yellow },
        DiagnosticTruncateLine =                { fg = solarized.fg },
        LspFloatWinNormal =                     { bg = solarized.contrast },
        LspFloatWinBorder =                     { fg = solarized.yellow },
        LspSagaBorderTitle =                    { fg = solarized.cyan },
        LspSagaHoverBorder =                    { fg = solarized.paleblue },
        LspSagaRenameBorder =                   { fg = solarized.green },
        LspSagaDefPreviewBorder =               { fg = solarized.green },
        LspSagaCodeActionBorder =               { fg = solarized.blue },
        LspSagaFinderSelection =                { fg = solarized.green },
        LspSagaCodeActionTitle =                { fg = solarized.paleblue },
        LspSagaCodeActionContent =              { fg = solarized.yellow },
        LspSagaSignatureHelpBorder =            { fg = solarized.gray },
        ReferencesCount =                       { fg = solarized.yellow },
        DefinitionCount =                       { fg = solarized.yellow },
        DefinitionIcon =                        { fg = solarized.blue },
        ReferencesIcon =                        { fg = solarized.blue },
        TargetWord =                            { fg = solarized.cyan },

        -- BufferLine
        BufferLineIndicatorSelected =           { fg = solarized.accent },
        BufferLineFill =                        { bg = solarized.bg_alt },

        -- Sneak
        Sneak =                                 { fg = solarized.bg, bg = solarized.accent },
        SneakScope =                            { bg = solarized.selection },

        -- Indent Blankline
        IndentBlanklineChar =                   { fg = solarized.highlight },
        IndentBlanklineContextChar =            { fg = solarized.disabled },
	
	 -- Nvim dap
         DapBreakpoint =                         { fg = solarized.red },
         DapStopped =                            { fg = solarized.green },
    }

    -- Options:

    -- Disable nvim-tree background
        if vim.g.solarized_disable_background == true then
            plugins.NvimTreeNormal =                        { fg = solarized.fg, bg = solarized.none }
        else
            plugins.NvimTreeNormal =                        { fg = solarized.fg, bg = solarized.sidebar }
        end

    return plugins

end

return theme
