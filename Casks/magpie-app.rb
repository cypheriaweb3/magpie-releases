cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.447"
  sha256 arm:   "b9a98ff4c4c34cf533752fd5469348ac5d27a4fba3e3ce0e83c063b2163a419b",
         intel: "73a83d40bf15bc7d4abf1f5205ce69a521aec28e43117b358a8276e4d7384c1a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
