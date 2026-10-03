cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.759"
  sha256 arm:   "289b870f5146b86cdb8f6de35727f67ca242a5915dcba014049f04424685ee9c",
         intel: "c11a38585b8f9e95dcf03c01727f70105d86afb312db675b0f8299e99dae172d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
