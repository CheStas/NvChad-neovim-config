require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>sf", "<cmd> Telescope find_files <CR>", { desc = "Find files" })
map("n", "<leader>sa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", { desc = "Find all" })
map("n", "<leader>sw", "<cmd> Telescope live_grep <CR>", { desc = "Live grep" })
map("n", "<leader>sg", "<cmd> lua require(\"telescope\").extensions.live_grep_args.live_grep_args() <CR>", { desc = "[S]earch by [G]rep" })
map("n", "<leader>sr", "<cmd> Telescope resume <CR>", { desc = "[S]earch [R]esume Open the previous picker" })

map("n", "<leader><leader>", "<cmd> Telescope buffers <CR>", { desc = "Find buffers" })
map("n", "<leader>sh", "<cmd> Telescope help_tags <CR>", { desc = "Help page" })
map("n", "<leader>so", "<cmd> Telescope oldfiles <CR>", { desc = "Find oldfiles" })
map("n", "<leader>sz", "<cmd> Telescope current_buffer_fuzzy_find <CR>", { desc = "Find in current buffer" })

-- git
map("n", "<leader>cm", "<cmd> Telescope git_commits <CR>", { desc = "Git commits" })
map("n", "<leader>gt", "<cmd> Telescope git_status <CR>", { desc = "Git status" })

-- pick a hidden term
map("n", "<leader>pt", "<cmd> Telescope terms <CR>", { desc = "Pick hidden term" })

-- theme switcher
map("n", "<leader>th", "<cmd> Telescope themes <CR>", { desc = "Nvchad themes" })

map("n", "<leader>ma", "<cmd> Telescope marks <CR>", { desc = "telescope bookmarks" })
