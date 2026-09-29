cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.396"
  sha256 arm:   "afff6568705a6271935a6c70c9e6cbea8729f0047dcc1757e62473a0ab49e73a",
         intel: "ea4e8237c82443f6f113c4642bfaa9c3c27e7a5b4f134c9b3a20fa39463527e3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
