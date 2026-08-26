cask "crema" do
  version "0.1.1"
  sha256 "6324a0b20551e287c69c36e8f7887a9272c47a673a247da9519772bafc71ecdf"

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
