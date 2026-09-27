cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.159"
  sha256 arm:   "208b47459b9b89d32127d222bdeecdfb31f7bc99ac1675e001fe0e2c7cbb6c33",
         intel: "9c515405e88fee075b967e25d51e25483c27c2527c6988f9b6e7b060209a601a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
