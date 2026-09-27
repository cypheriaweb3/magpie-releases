cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.164"
  sha256 arm:   "2ead30cbd5a74079420baf83c742521cd5a80dfa106b8fb511afc4114092d5ce",
         intel: "caf7eee7796f9183af4866e9be6e72c6ea54ff0e064082c67b3266f609f45bf7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
