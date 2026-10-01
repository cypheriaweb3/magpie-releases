cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.597"
  sha256 arm:   "47914ab294d0321f348e95f95032f6fd4353a51dbc7fbe551dc2172ff2fa1fa5",
         intel: "09da3ebb9d457cb1cf31895280720ac2e6386242ff48f0e7359540a4a4adb4c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
