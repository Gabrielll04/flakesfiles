pkgs: 
{
    enable = true;
    enableUpdateCheck = false;
    enableExtensionUpdateCheck = false;

    userSettings = { 
        "files.autoSave" = "afterDelay";
        "files.autoSaveDelay" = 800;
        "files.encoding" = "utf8";
        "files.hotExit" = "onExit";
        
        "editor.minimap.enabled" = false;
        "editor.tabSize" = 2;
        "editor.indentSize" = "tabSize";
        "editor.wordWrap" = true;
        "editor.autoClosingBrackets" = "languageDefined";
        "editor.autoClosingQuotes" = "always";
        "editor.autoIndent" = "advanced";
        "editor.codeLens" = true;
        "editor.detectIndentation" = true;
        "editor.dragAndDrop" = true;
        "editor.matchBrackets" = "always";
        "editor.scrollbar.horizontal" = "auto";
        "editor.scrollbar.vertical" = "auto";
        "editor.smoothScrolling" = true;
        "editor.snippets.codeActions.enabled" = true;
        "editor.snippetSuggestions" = "inline";

        "workbench.editor.historyBasedLanguageDetection" = true;
        "workbench.editor.languageDetection" = true;
        "workbench.iconTheme" = "material-icon-theme";
        "workbench.colorTheme" = "Monokai";

        "terminal.integrated.tabs.showActiveTerminal" = "always";
        "terminal.integrated.smoothScrolling" = true;

        "telemetry.telemetryLevel" = "off";

        "explorer.confirmDragAndDrop" = false;

        "search.decorations.badges" = true;
        "search.mode" = "newEditor";

        "git.showProgress" = true;
        "git.showPushSuccessNotification" = true;
        "git.terminalAuthentication" = true;
        "git.enabled" = true;

        "github.gitProtocol" = "https";
    };

    extensions = with pkgs.vscode-extensions; [
        bbenoist.nix
        ms-azuretools.vscode-docker
        bradlc.vscode-tailwindcss
    ];
}
