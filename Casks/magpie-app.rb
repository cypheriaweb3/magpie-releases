cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.362"
  sha256 arm:   "8dbd22309671b3ca554034657e21a5f67f75e0a853ab46fff5b4061329cd4b1c",
         intel: "63b2ce09fbbab66020bb388f5ca899612a657a92f7b35a123da713d9e1e1814e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
