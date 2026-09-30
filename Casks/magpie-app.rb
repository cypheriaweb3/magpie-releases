cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.542"
  sha256 arm:   "d095639b1a1d5d554349e4e76d12476979180d6d1190371de1826b6e5b5b8f02",
         intel: "84178da46ddb689099f7e486ff37e57e56e17a590bc87104646550c11bfb0f75"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
