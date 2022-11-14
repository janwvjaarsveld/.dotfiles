require'nvim-treesitter.configs'.setup {
    ensure_installed = {"rust", "dockerfile", "go", "javascript", "typescript"},
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
