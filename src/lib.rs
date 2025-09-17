use zed_extension_api as zed;

struct TempoExtension {
    // ... state
}

impl zed::Extension for TempoExtension {
    /// Returns a new instance of the extension.
    fn new() -> Self
    where
        Self: Sized,
    {
        TempoExtension {}
    }

    /// Returns the command used to start the language server for the specified
    /// language.
    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> zed::Result<zed::Command> {
        if let Some(tempo_path) = worktree.which("tempo") {
            Ok(zed::Command {
                command: tempo_path,
                args: vec!["lsp".to_string()],
                env: Vec::new(),
            })
        } else {
            Err("Failed to find `tempo` executable".to_string())
        }
    }
}

zed::register_extension!(TempoExtension);
