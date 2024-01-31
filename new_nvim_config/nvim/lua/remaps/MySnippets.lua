local MySnippets = {}
MySnippets.__index = MySnippets
function MySnippets:new()
    local instance = setmetatable({
        mode = "",
        logs = {
            js = "oconsole.log('')\x1bhha",
            py = "oprint('')\x1bhha",
            go = "ofmt.Println(\"\")\x1bhha",
            lua = "oprint('')\x1bhha",
        },
        docs = {
            js = "i/**\ndescription\n@param {} name\n@param {} name\n/",
            py = '',
            go = '',
            lua = '',
        },
        errors = {
            js = '',
            py = '',
            go = 'oif err != nil {\nfmt.Println("An error occured: ", err)\nreturn\n}',
            lua = '',
        }
    }, MySnippets)
    return instance
end

function MySnippets:set_language(lang)
    self.language = lang
end

function MySnippets:isJS(filetype)
    return filetype == 'typescript' or filetype == 'javascript' or filetype == 'typescriptreact' or
        filetype == 'javascriptreact' or filetype == 'html'
end

function MySnippets:select_snippet_category(snip)
    if snip == "log" then
        return self.logs
    end
    if snip == "doc" then
        return self.docs
    end
    return self.errors
end

function MySnippets:select_snippet(category)
    if self.language == 'go' then
        return category.go
    end
    if self:isJS(self.language) then
        return category.js
    end
    if self.language == 'lua' then
        return category.lua
    end
    return category.py
end

function MySnippets:exec(snip)
    self:set_language(vim.bo.filetype)

    local snippet_group = self:select_snippet_category(snip)
    local snippet_string = self:select_snippet(snippet_group)

    if snippet_string == '' then return end

    vim.api.nvim_feedkeys(snippet_string, 'n', true)
end

return MySnippets
