cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.379"
  sha256 arm:   "35ff808e95980e9a0270ab82ff35dc00e23a5e7bb61ce0754066339c086f2f9d",
         intel: "9ef6f9d90c927868aa467bf88baecd45772591c3c144f5e2edd00ecba7a71d0e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
