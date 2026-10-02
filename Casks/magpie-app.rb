cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.692"
  sha256 arm:   "51002a14e76dcbb61970fec51dc172fcc7eee4375e24eee0c28f60ec882fac8a",
         intel: "3fb2a5f48e44c3fe2f6a81e43d2c5b4d5495f4556fdd22debb2e9ec8e2a1e7b4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
