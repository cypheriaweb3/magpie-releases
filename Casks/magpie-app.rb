cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.305"
  sha256 arm:   "9d22ce7b7be3b7b04b2ae84eabd0a0376229d054bb3ab36d55812da031e6c0b9",
         intel: "efdf1061cc3afab6dbedf5cdd599a88ab056f8c60a2218a3b0a144f8e533c21a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
