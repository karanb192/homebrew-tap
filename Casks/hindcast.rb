cask "hindcast" do
  version "0.1.3"
  sha256 "9a8215d7bcaaf452ac28093f73e4c27642f5b91fb6aa0ec8bb6e500806576e5c"

  url "https://github.com/karanb192/hindcast/releases/download/v#{version}/Hindcast-#{version}-arm64-mac.zip"
  name "Hindcast"
  desc "Browse, search, and replay every Claude Code session on your Mac"
  homepage "https://github.com/karanb192/hindcast"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on formula: "ripgrep"

  app "Hindcast.app"

    Hindcast is not yet notarized. macOS will report the app as damaged
    on first launch. To clear the quarantine flag, run:
      xattr -rd com.apple.quarantine /Applications/Hindcast.app
    This step disappears in an upcoming signed release.
  EOS

  zap trash: [
    "~/Library/Application Support/Hindcast",
    "~/Library/Application Support/hindcast",
    "~/Library/Preferences/in.karanbansal.hindcast.plist",
    "~/Library/Saved Application State/in.karanbansal.hindcast.savedState",
  ]
end
