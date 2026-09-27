cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.156"
  sha256 arm:   "e916b7519d3f4427e861fe413a9dfb714480da3c3046b45e53804a6a97b5ca90",
         intel: "50d3ede1ebbbcb7dac21b0c547f1f1edaadee516897cac58e01ae32751ff3932"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
