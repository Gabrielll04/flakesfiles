pkgs: 
{
    enable = true;
    enableUpdateCheck = true;

    userSettings = { 
        ''{
            "files.autoSave": "afterDelay";
            "files.autoSaveDelay": 800;
            "files.encoding": "utf8";
            "files.hotExit": "onExit";
            
            "editor.minmap": false;
            "editor.tabSize": 2;
            "editor.wordWrap": true;
            "editor.autoClosingBrackets": "languageDefined";
            "editor.autoClosingQuotes": "always";
            "editor.autoIndent": "advanced";
            "editor.codeLens": true;
            "editor.detectIndentation": true;
            "editor.dragAndDrop": true;
            "editor.matchBrackets": "always";
            "editor.scrollbar.horizontal": "auto";
            "editor.scrollbar.vertical": "auto";
            "editor.smoothScrolling": true;
            "editor.snippets.codeActions.enabled": true;
            "editor.snippetSuggestions": "inline";

            "workbench.editor.historyBasedLanguageDetection": true;
            "workbench.editor.languageDetection": true;


            "terminal.integrated.tabs.showActiveTerminal": true;
            "terminal.integrated.smoothScrolling": true;

            "telemetry.telemetryLevey": "off";

            explorer.confirmDragAndDrop": false;

            "search.decorations.badges": true;
            "search.mode": "newEditor";

            "git.showProgress": true;
            "git.showPushSuccessNotification": true;
            "git.terminalAuthentication": true;
            "git.enabled": true;
            "git.enabled": true;

            "github.gitProtocol": "https";
        }'';
    };

    extensions = with pkgs.vscode-extensions; [
        PKief.material-icon-theme
        ms-azuretools.vscode-docker
        bradlc.vscode-tailwindcss
    ];
}
