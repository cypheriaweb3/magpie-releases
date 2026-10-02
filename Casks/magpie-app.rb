cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.655"
  sha256 arm:   "4cd156aee2a09aef2aef5f8454d71451aca96186565e7f6a628d797a643ea573",
         intel: "ce8243163bbfb3e8b57790f1f7c23a2f90cbd7ccaf870a84b705c18c6e3c981a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
