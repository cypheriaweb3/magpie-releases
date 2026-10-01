cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.576"
  sha256 arm:   "2d135ae833f907e19d28ca3260b8f57fb23c4879c11de4121746f1e04a8e426e",
         intel: "97b34d633feed65a2faef4df37dd6052df07ce8b18eb0eb0c8c88f8e6e4206dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
