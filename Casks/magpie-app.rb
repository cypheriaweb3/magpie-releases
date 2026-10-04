cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.854"
  sha256 arm:   "475bd91c85004e45075ba14b410e1e73022ce386c3318b047da979877cdbe06b",
         intel: "18194c5786427a4c7c3d4fd6e677f91f7d61ea8c2f1e3502bf7879154baa8b51"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
