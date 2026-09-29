cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.364"
  sha256 arm:   "a285aad6552d341ff258ace62581bb5a8da2db23c0ad9a9bfa040634478c0c7c",
         intel: "411bc46ee6a89e5f6fa497eced373057ed15e942118f3b5ad3cdb3c40c5a96d6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
