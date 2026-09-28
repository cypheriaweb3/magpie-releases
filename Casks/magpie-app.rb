cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.272"
  sha256 arm:   "400182726c53c1e67ecebae8eb45a495eb18308632d69f02171874c481c24c60",
         intel: "8066f00ca48b721ae00be929fb98a345299ba52010b8bcfc0349096ed0361db8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
