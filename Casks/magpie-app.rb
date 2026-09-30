cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.491"
  sha256 arm:   "0914283dd0300ccdabdbcef01eddd22e5732c9c88c236116e8ab3aa33e18f186",
         intel: "c659ef44d3dcb02bf444e2b2aaa78fa614f44fdfa6b37fbe812259599b3313a8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
