local keymap = vim.keymap.set
local vscode = require("vscode")

-- Helper: call a VSCode command
local function call(cmd)
  return function()
    vscode.action(cmd)
  end
end

--------------------------------------------------------------------------------
-- File / Find
--------------------------------------------------------------------------------
keymap("n", "<leader>ff", call("workbench.action.quickOpen"), { desc = "Find Files" })
keymap("n", "<leader><space>", call("workbench.action.quickOpen"), { desc = "Find Files" })
keymap("n", "<leader>fr", call("workbench.action.openRecent"), { desc = "Recent Files" })
keymap("n", "<leader>fn", call("workbench.action.files.newUntitledFile"), { desc = "New File" })
keymap("n", "<leader>,", call("workbench.action.quickOpen"), { desc = "Switch Buffer" })
keymap("n", "<leader>:", call("workbench.action.showCommands"), { desc = "Command Palette" })

--------------------------------------------------------------------------------
-- Search / Grep
--------------------------------------------------------------------------------
keymap("n", "<leader>/", call("workbench.action.findInFiles"), { desc = "Grep (Find in Files)" })
keymap("n", "<leader>sg", call("workbench.action.findInFiles"), { desc = "Grep (Find in Files)" })
keymap("n", "<leader>sr", call("workbench.action.replaceInFiles"), { desc = "Replace in Files" })
keymap("n", "<leader>sb", call("actions.find"), { desc = "Search Buffer" })
keymap("n", "<leader>ss", call("workbench.action.gotoSymbol"), { desc = "Goto Symbol" })
keymap("n", "<leader>sS", call("workbench.action.showAllSymbols"), { desc = "Goto Symbol (Workspace)" })
keymap("n", "<leader>sC", call("workbench.action.showCommands"), { desc = "Commands" })
keymap("n", "<leader>sk", call("workbench.action.openGlobalKeybindings"), { desc = "Key Maps" })
keymap("n", "<leader>sd", call("workbench.actions.view.problems"), { desc = "Diagnostics" })
keymap("n", "<leader>sw", call("editor.action.addSelectionToNextFindMatch"), { desc = "Search Word" })

--------------------------------------------------------------------------------
-- Buffer
--------------------------------------------------------------------------------
keymap("n", "<leader>bd", call("workbench.action.closeActiveEditor"), { desc = "Close Buffer" })
keymap("n", "<leader>bo", call("workbench.action.closeOtherEditors"), { desc = "Close Other Buffers" })
keymap("n", "<leader>bl", call("workbench.action.closeEditorsToTheLeft"), { desc = "Close Buffers to Left" })
keymap("n", "<leader>br", call("workbench.action.closeEditorsToTheRight"), { desc = "Close Buffers to Right" })
keymap("n", "<leader>bb", call("workbench.action.quickOpen"), { desc = "Switch Buffer" })
keymap("n", "<leader>bp", call("workbench.action.pinEditor"), { desc = "Toggle Pin Buffer" })
keymap("n", "<S-h>", call("workbench.action.previousEditor"), { desc = "Previous Buffer" })
keymap("n", "<S-l>", call("workbench.action.nextEditor"), { desc = "Next Buffer" })
keymap("n", "[b", call("workbench.action.previousEditor"), { desc = "Previous Buffer" })
keymap("n", "]b", call("workbench.action.nextEditor"), { desc = "Next Buffer" })

--------------------------------------------------------------------------------
-- Window
--------------------------------------------------------------------------------
keymap("n", "<C-h>", call("workbench.action.focusSideBar"), { desc = "Focus Explorer" })
keymap("n", "<C-j>", call("workbench.action.focusBelowGroup"), { desc = "Focus Below Window" })
keymap("n", "<C-k>", call("workbench.action.focusAboveGroup"), { desc = "Focus Above Window" })
keymap("n", "<C-l>", call("workbench.action.focusRightGroup"), { desc = "Focus Right Window" })
keymap("n", "<leader>w-", call("workbench.action.splitEditorDown"), { desc = "Split Below" })
keymap("n", "<leader>-", call("workbench.action.splitEditorDown"), { desc = "Split Below" })
keymap("n", "<leader>w|", call("workbench.action.splitEditor"), { desc = "Split Right" })
keymap("n", "<leader>|", call("workbench.action.splitEditor"), { desc = "Split Right" })
keymap("n", "<leader>wd", call("workbench.action.closeGroup"), { desc = "Close Window" })
keymap("n", "<leader>ww", call("workbench.action.focusNextGroup"), { desc = "Other Window" })

--------------------------------------------------------------------------------
-- Code / LSP
--------------------------------------------------------------------------------
keymap("n", "gd", call("editor.action.revealDefinition"), { desc = "Goto Definition" })
keymap("n", "gD", call("editor.action.revealDeclaration"), { desc = "Goto Declaration" })
keymap("n", "gr", call("editor.action.goToReferences"), { desc = "Goto References" })
keymap("n", "gI", call("editor.action.goToImplementation"), { desc = "Goto Implementation" })
keymap("n", "gy", call("editor.action.goToTypeDefinition"), { desc = "Goto Type Definition" })
keymap("n", "K", call("editor.action.showHover"), { desc = "Hover" })
keymap("n", "gK", call("editor.action.triggerParameterHints"), { desc = "Signature Help" })
keymap("i", "<C-k>", call("editor.action.triggerParameterHints"), { desc = "Signature Help" })
keymap("n", "<leader>ca", call("editor.action.quickFix"), { desc = "Code Action" })
keymap("v", "<leader>ca", call("editor.action.quickFix"), { desc = "Code Action" })
keymap("n", "<leader>cA", call("editor.action.sourceAction"), { desc = "Source Action" })
keymap("n", "<leader>cr", call("editor.action.rename"), { desc = "Rename" })
keymap("n", "<leader>cf", call("editor.action.formatDocument"), { desc = "Format Document" })
keymap("v", "<leader>cf", call("editor.action.formatSelection"), { desc = "Format Selection" })
keymap("n", "<leader>cd", call("editor.action.peekError"), { desc = "Peek Error" })
keymap("n", "]d", call("editor.action.marker.next"), { desc = "Next Diagnostic" })
keymap("n", "[d", call("editor.action.marker.prev"), { desc = "Previous Diagnostic" })
keymap("n", "]e", call("editor.action.marker.nextInFiles"), { desc = "Next Error" })
keymap("n", "[e", call("editor.action.marker.prevInFiles"), { desc = "Previous Error" })

--------------------------------------------------------------------------------
-- Git
--------------------------------------------------------------------------------
keymap("n", "<leader>gg", call("workbench.view.scm"), { desc = "Source Control" })
keymap("n", "<leader>gb", call("gitlens.toggleLineBlame"), { desc = "Toggle Line Blame" })
keymap("n", "<leader>gB", call("gitlens.openFileOnRemote"), { desc = "Open on Remote" })
keymap("n", "]h", call("workbench.action.editor.nextChange"), { desc = "Next Change" })
keymap("n", "[h", call("workbench.action.editor.previousChange"), { desc = "Previous Change" })

--------------------------------------------------------------------------------
-- Explorer / Sidebar
--------------------------------------------------------------------------------
keymap("n", "<leader>e", call("workbench.action.toggleSidebarVisibility"), { desc = "Toggle Explorer" })
keymap("n", "<leader>E", call("workbench.view.explorer"), { desc = "Focus Explorer" })

--------------------------------------------------------------------------------
-- Diagnostics / Problems
--------------------------------------------------------------------------------
keymap("n", "<leader>xx", call("workbench.actions.view.problems"), { desc = "Problems" })

--------------------------------------------------------------------------------
-- UI Toggles
--------------------------------------------------------------------------------
keymap("n", "<leader>uz", call("workbench.action.toggleZenMode"), { desc = "Toggle Zen Mode" })
keymap("n", "<leader>uZ", call("workbench.action.toggleEditorWidths"), { desc = "Toggle Zoom" })
keymap("n", "<leader>uw", call("editor.action.toggleWordWrap"), { desc = "Toggle Word Wrap" })
keymap("n", "<leader>ub", call("workbench.action.toggleLightDarkThemes"), { desc = "Toggle Light/Dark" })
keymap("n", "<leader>um", call("editor.action.toggleMinimap"), { desc = "Toggle Minimap" })
keymap("n", "<leader>uh", call("editor.action.toggleInlayHints"), { desc = "Toggle Inlay Hints" })
keymap("n", "<leader>ul", call("editor.action.toggleLineNumbers"), { desc = "Toggle Line Numbers" })

--------------------------------------------------------------------------------
-- Terminal
--------------------------------------------------------------------------------
keymap("n", "<C-/>", call("workbench.action.terminal.toggleTerminal"), { desc = "Toggle Terminal" })
keymap("n", "<leader>ft", call("workbench.action.terminal.toggleTerminal"), { desc = "Toggle Terminal" })
keymap("n", "<leader>fT", call("workbench.action.terminal.new"), { desc = "New Terminal" })

--------------------------------------------------------------------------------
-- Quit
--------------------------------------------------------------------------------
keymap("n", "<leader>qq", call("workbench.action.quit"), { desc = "Quit" })

--------------------------------------------------------------------------------
-- General
--------------------------------------------------------------------------------
-- Move lines (normal + visual)
keymap("n", "<A-j>", call("editor.action.moveLinesDownAction"), { desc = "Move Line Down" })
keymap("n", "<A-k>", call("editor.action.moveLinesUpAction"), { desc = "Move Line Up" })
keymap("v", "<A-j>", call("editor.action.moveLinesDownAction"), { desc = "Move Lines Down" })
keymap("v", "<A-k>", call("editor.action.moveLinesUpAction"), { desc = "Move Lines Up" })

-- Save
keymap({ "n", "i", "v" }, "<C-s>", call("workbench.action.files.save"), { desc = "Save File" })

-- Better escape: clear search highlight
keymap("n", "<Esc>", "<cmd>noh<CR><Esc>", { desc = "Clear Highlight" })

-- Indenting in visual mode (stay in visual)
keymap("v", "<", "<gv", { desc = "Indent Left" })
keymap("v", ">", ">gv", { desc = "Indent Right" })

-- Better up/down on wrapped lines
keymap({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
keymap({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Center screen after jumps
keymap("n", "n", "nzzzv", { desc = "Next Search Result" })
keymap("n", "N", "Nzzzv", { desc = "Previous Search Result" })
keymap("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down" })
keymap("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up" })
