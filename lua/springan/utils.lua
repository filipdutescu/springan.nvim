local M = {}

local a = vim.api
local none = 'NONE'

---Initialize given options with default values
---@param opts table Highlight options used by `vim.api.nvim_set_hl`
---@return table
M.init_defaults_where_none = function(opts)
    -- set colours
    opts.fg = opts.fg or none
    opts.bg = opts.bg or none
    opts.ctermfg = opts.ctermfg or none
    opts.ctermbg = opts.ctermbg or none
    opts.sp = opts.sp or none

    -- blending
    opts.blend = opts.blend or 0

    -- style
    opts.bold = opts.bold or false
    opts.standout = opts.standout or false
    opts.underline = opts.underline or false
    opts.undercurl = opts.undercurl or false
    -- opts.underdouble = opts.underdouble or false
    -- opts.underdotted = opts.underdotted or false
    -- opts.underdashed = opts.underdashed or false
    opts.strikethrough = opts.strikethrough or false
    opts.italic = opts.italic or false

    return opts
end

---Set a new highlight group or override an existing one
---@param group string Name of the group
---@param opts table Highlight options used by `vim.api.nvim_set_hl`
M.highlight = function(group, opts)
    opts = M.init_defaults_where_none(opts)

    a.nvim_set_hl(0, group, opts)
end

---Link a highlight group to another
---@param new_group string Name of the new group to be linked
---@param existing_group string Name of the existing group, to which the new one will be linked to
M.link = function(new_group, existing_group)
    a.nvim_set_hl(new_group, { link = existing_group })
end

return M
