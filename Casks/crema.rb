cask "crema" do
  version "0.1.3"
  sha256 "8b0433b897f27eb4d371564839591cd031e40c576bb055c5d5058ebe5873ad63"

  url "https://github.com/karanb192/crema/releases/download/v#{version}/Crema-#{version}-arm64-mac.zip"
  name "Crema"
  desc "Prevents the system from sleeping while AI coding agents are working"
  homepage "https://github.com/karanb192/crema"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Crema.app"

  zap trash: [
    "~/Library/Preferences/in.karanbansal.crema.plist",
    "~/Library/Saved Application State/in.karanbansal.crema.savedState",
  ]
end
