cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.229"
  sha256 arm:   "e560550f8815816645fce183617af0f5dccaf4b2c9ef16d42143ad805f597a3b",
         intel: "ebe58fd787c77bf6d2ee249dbc2165bb9a77b3e7c1eb7c9fb1cf7e7aec99cf83"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
