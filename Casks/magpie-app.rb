cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.455"
  sha256 arm:   "26514059e207f1111423a2c5fa8ce4122f33ce67b4a9c5ecec34d444f87ea29a",
         intel: "d59694403f3ed4b8f4e4fd7ce6d6f93642afa648acc7b0484a7e228ea44cb999"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
