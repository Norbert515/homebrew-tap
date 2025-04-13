# homebrew-tap

Homebrew tap for Vide - a Flutter development tool.

## Installation

```bash
brew install norbert515/tap/vide
```

## What's included

The formula installs the `vide` binary which includes both the CLI and MCP functionality:

- `vide flutter run` - Run Flutter with Vide's enhanced development features
- `vide --mcp` - Run in MCP server mode for IDE integration

## Development

To update the formula:

1. Build a new release of vide_cli
2. Update the version, URL and SHA256 in `Formula/vide.rb`
3. Test the formula locally
4. Commit and push changes
