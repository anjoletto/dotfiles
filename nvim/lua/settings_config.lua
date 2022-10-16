local o = vim.opt

o.fileencoding = "utf-8"
o.encoding = "utf-8"        -- force utf-8 encoding
o.pumheight = 10            -- autocomplete menu height
o.cmdheight = 1             -- lines to display messages
o.mouse = "a"               -- allows mouse
o.splitbelow = true         -- horizontal splits below
o.splitright = true         -- vertical splits to the right
o.expandtab = true          -- change tab to spaces
o.tabstop = 2               -- number of spaces inserted by tabs
o.shiftwidth = 2            -- number of spaces to use as indentation
o.softtabstop = 2           -- number of spaces in editing operations
o.relativenumber = true     -- set relative numbering as default...
o.number = true             -- but show current line's line number
o.cursorline = true         -- highlight the current line
o.clipboard = "unnamedplus" -- copy between vim and any GUI stuff
o.autochdir = true          -- change to file directory
o.scrolloff = 10            -- keep some lines in top and bottom
o.showmatch = true          -- show matching (), [], {}, etc.
o.colorcolumn = {80}        -- show line at 80th char

-- set spell checking for every filetype
o.spell = true
o.spelllang = {"pt_br", "en_us"}

-- ignore some files
o.wildignore = {
  "*.DS_Store", "*.db", "*.exe", "*.app", -- OS stuff
  "*.o", "*.pyc", "*.class",              -- executables
  "*.aux", "*.bbl", "*.blg", "*.loa", "*.lof", "*.toc", "*.out", "*.log" -- latex
}
