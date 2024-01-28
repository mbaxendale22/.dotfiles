local RegexReplacements = {}
RegexReplacements.__index = RegexReplacements
function RegexReplacements:new()
    local instance = setmetatable({
        quotes = { left = '"', right = '"' },
        braces = { left = '{', right = '}' },
        brackets = { left = '[', right = ']' },
        parens = { left = '(', right = ')' },
        current_symbols = "",
        selected_symbols = { left = '', right = '' }
    }, RegexReplacements)
    return instance
end

function RegexReplacements:set_current_symbols(left, right)
    self.selected_symbols.left = left
    self.selected_symbols.right = right
end

function RegexReplacements:select_replacements()
    if self.current_symbols == "quotes" then
        self:set_current_symbols(self.quotes.left, self.quotes.right)
    elseif self.current_symbols == "braces" then
        self:set_current_symbols(self.braces.left, self.braces.right)
    elseif self.current_symbols == "brackets" then
        self:set_current_symbols(self.brackets.left, self.brackets.right)
    else
        self:set_current_symbols(self.parens.left, self.parens.right)
    end
end

function RegexReplacements:surround_current_word(symbol)
    self.current_symbols = symbol
    local current_word = vim.fn.expand('<cword>')
    self:select_replacements()
    local cmd = string.format(':s/\\(%s\\)/%s\\1%s<CR>', current_word, self.selected_symbols.left,
        self.selected_symbols.right)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(cmd, true, false, true), 'n', true)
end

function RegexReplacements:surround_selection(symbol)
    self.current_symbols = symbol
    local cmd = string.format(':s/\\%%V\\(.*\\)\\%%V/%s\\1%s<CR>', self.selected_symbols.left,
        self.selected_symbols.right)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(cmd, true, true, true), 'n', true)
end

function RegexReplacements:capture_replace_current_word()
    local current_word = vim.fn.expand('<cword>')
    local cmd = string.format(':s/\\(%s\\)/', current_word)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(cmd, true, false, true), 'n', true)
end

return RegexReplacements
