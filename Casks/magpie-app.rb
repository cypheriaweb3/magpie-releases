cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.642"
  sha256 arm:   "670bb49bb072058939f6e495fa6e9f92a385ffcd0db1966bca202bb292a15dcf",
         intel: "bf10f6f644c45ecd98af83e66a85cb1a46f99912620674e72b443cc6deb656c0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
