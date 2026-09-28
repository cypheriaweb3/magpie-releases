cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.286"
  sha256 arm:   "a23c6596799c9dae3597ee02f3556a9cc414d78afa1f3ac48ff0f2a3b3b539cf",
         intel: "c241f82e1ec7fd5acfe3125945d9994b9904cd8091cd9693ecf13fe103ec1cfa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
