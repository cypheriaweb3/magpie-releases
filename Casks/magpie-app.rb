cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.221"
  sha256 arm:   "2144957e7f6ee385c2e5680a4a581fec7fba2de0cd0e506bfea83556e0a04fb4",
         intel: "d72b67cc0251c997d672872aaeb20476e2fb12b57feacf3c7c9b4ec0cf1b2079"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
