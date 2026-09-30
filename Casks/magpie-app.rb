cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.485"
  sha256 arm:   "2968f7a531ec9253e8bb9ae00b0d8bf065c4bf06cc83d88c56b557112f12b6be",
         intel: "9a042cd565ba44d0d5d44b3a8b05ab3d9ea009d9b9293babaa6dc6beb2254726"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
