cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.594"
  sha256 arm:   "3440064bdd3ff942773ce0551c34f311d3c27bcd8b0961e202909d0e9bb19384",
         intel: "4d5f169c232fa5053ab1d65b6f84b35aa73da4f348b1b46406981b05782af2aa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
