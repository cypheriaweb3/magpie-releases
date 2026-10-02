cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.676"
  sha256 arm:   "a6b3b65af8669d335e22af7aa32edd88eb699e789e208525be082f079e3ce654",
         intel: "858639eda0539c5cc2d325548f1a6586155bc8db10f170ee68c8011131eec384"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
