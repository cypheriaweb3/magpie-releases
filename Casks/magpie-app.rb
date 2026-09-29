cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.403"
  sha256 arm:   "26bf519ffcaca37b460ce28b0d33058f3d1563e2a80a9cdc7d0c83b8e7f19a4a",
         intel: "9e996b585024c8be9081ea10d93d20c9e4e8c8a3e6aa62f82e31ab4d72ba91e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
