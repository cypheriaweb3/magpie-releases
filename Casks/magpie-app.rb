cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.307"
  sha256 arm:   "0fe5d782389cafeff54f4595f0aa53407547a98446eeebbce44b82ad942e7582",
         intel: "dccc622767daebbc72ad689005cdc2f6b75f3a282b89adb0d6141b9d1ac83a7c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
