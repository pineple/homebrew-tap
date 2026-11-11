# Pineple Homebrew tap

Install the BedrockPass command-line connector on macOS:

```sh
brew tap pineple/tap
brew trust --formula pineple/tap/bedrock-pass
brew install bedrock-pass
```

The trust command is a one-time approval for this formula.

Then run it with the address and Bedrock port of your remote Geyser server:

```sh
bedrock-pass --target your.geyser.host --port 19132
```

Use `bedrock-pass --help` to see all options. The connector runs in the foreground while waiting for a console to discover the LAN world; press Ctrl+C to stop it. It is not installed as a background service.

The formula installs native Apple Silicon and Intel builds. Third-party notices and license texts are installed under `$(brew --prefix)/share/bedrock-pass`.

## Publishing a release

From the private `bedrock-pass` source repository, authenticate the GitHub CLI and run `./scripts/publish-cli-release.sh 0.1.2`. This builds macOS and Linux archives for ARM64 and AMD64, generates `SHA256SUMS`, and uploads the files to the public `pineple/bedrock-pass-releases` repository.

The publisher updates `Formula/bedrock-pass.rb` in the local tap checkout after uploading the release. Review the change, then commit and push it so `brew update` can pick it up.
