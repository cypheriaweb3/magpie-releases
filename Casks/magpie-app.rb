cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.838"
  sha256 arm:   "873e45dd797244b1fabb77ed7b0d6e0f38c6ca437e6621db67c5fd3f62981da6",
         intel: "b3edbd0d976e28a1359ce33b74e1dab48dd619fb24a3aa04301ce4b252cd56a2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
