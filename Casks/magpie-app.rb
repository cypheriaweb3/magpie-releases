cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.724"
  sha256 arm:   "f03d427d3e21e0ebe432c9d39aca21ee281cd322f21c82b3dc6b4c8090140590",
         intel: "d7fb5c2953eec5b7946e1895bbd80cdc160f01f13e42c9489b0353d0e0629fde"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
