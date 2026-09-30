cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.516"
  sha256 arm:   "c4158708a189636b429cc7d96851e757fe2c0d04246204595fc8715e3a3134c6",
         intel: "f1357b3b0bc3b7fe3692ab0b351d6fa096672eda21b0d0b9ccd0a088196c0cbb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
