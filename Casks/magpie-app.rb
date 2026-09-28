cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.319"
  sha256 arm:   "61ef575d84704bb9a57ff84d4eb6d8852f2584c585680d5487a84d850b326a26",
         intel: "35548f2e90920ee9b68bb94ea17aca239617023fb2c7013ce52d37a987131063"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
