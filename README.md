<img src="bboxy.png" width="120" align="right" alt="bboxy450">

# bboxy450 tap

Homebrew tap for bboxy450 software.

```sh
brew tap bboxy450/tap
brew trust --tap bboxy450/tap   # Homebrew loads third-party taps only once trusted
brew install --cask bboxy450-term
xattr -dr com.apple.quarantine /Applications/bboxy450-term.app   # once: not yet notarized
```

| Cask | What it is |
|---|---|
| `bboxy450-term` | GPU terminal for running agent swarms |

Builds come from [bboxy450-term-releases](https://github.com/bboxy450/bboxy450-term-releases), each signed with GPG key `9B07E849480C68328CA20684844ECC0587DE7AB0`.
