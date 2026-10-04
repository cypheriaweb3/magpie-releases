cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.844"
  sha256 arm:   "3b54f7c7e736a39192ccf9fc79dadf57d397f508f73321dd3b2d7f67f2d652f2",
         intel: "c99d617df1a4cabe695cf9e3670ab7317b4a8d7b875066bc58e158bd94573177"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
