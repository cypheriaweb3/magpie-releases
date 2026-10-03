cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.704"
  sha256 arm:   "caeec47d3a13ac61740db531267f489c3d11d579c2e3760e07a289ad0caea5e0",
         intel: "02fbc6bc5940d8677212bed08b98bf09ed8a2188bdbba9382b5ad6b5d80a587d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
