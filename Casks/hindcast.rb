cask "hindcast" do
  version "0.1.0"
  sha256 "46c6f3c9fbae2a3cfca39a95cce79b53ac9331acf429ecbe4ab80e6d6f5fb063"

  url "https://github.com/karanb192/hindcast/releases/download/v#{version}/Hindcast-#{version}-arm64-mac.zip"
  name "Hindcast"
  desc "Browse, search, and replay every Claude Code session on your Mac"
  homepage "https://github.com/karanb192/hindcast"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Hindcast.app"

  caveats <<~EOS
    Hindcast is not yet notarized. macOS will report the app as damaged
    on first launch. To clear the quarantine flag, run:
      xattr -rd com.apple.quarantine /Applications/Hindcast.app
    This step disappears in an upcoming signed release.
  EOS

  zap trash: [
    "~/Library/Application Support/hindcast",
    "~/Library/Preferences/in.karanbansal.hindcast.plist",
    "~/Library/Caches/hindcast",
    "~/Library/Saved Application State/in.karanbansal.hindcast.savedState",
  ]
end
