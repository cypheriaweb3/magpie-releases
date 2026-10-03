cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.799"
  sha256 arm:   "b51ac7aed30ebd5fcc6c0d3ca0ba81057a4df817a538a6a4b1ca942b31081933",
         intel: "4ef57103cc3c9ad860878a8a21c5980f7442a63aa7c7a130640d55482229b223"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
