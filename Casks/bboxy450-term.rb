cask "bboxy450-term" do
  version "0.1.0"
  sha256 "f241b55e7f55838b812ea4fb57bac980ac63495358595e9743dbb3c470ff7c8c"

  url "https://github.com/bboxy450/bboxy450-term-releases/releases/download/v#{version}/bboxy450-term-#{version}-macos-arm64.zip"
  name "bboxy450-term"
  desc "GPU terminal for running agent swarms"
  homepage "https://github.com/bboxy450/bboxy450-term-releases"

  depends_on arch: :arm64

  app "bboxy450-term.app"
  binary "#{appdir}/bboxy450-term.app/Contents/MacOS/bboxy450-term"

  # Signed with an Apple Development certificate, not yet notarized.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/bboxy450-term.app"]
  end

  zap trash: [
    "~/Library/Application Support/bboxy450-term",
  ]
end
