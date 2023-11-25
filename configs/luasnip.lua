local ls = require 'luasnip'

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('javascript', {
    s('type', { t '/** @type {', i(1), t '} */' }),
    s('param', { t '/** @param {', i(1), t '}', i(2), t ' */' }),
})

ls.add_snippets('javascript', {
    s('type', { t '---@type ', i(1) }),
    s('param', { t '---@param ', i(1) }),
})
