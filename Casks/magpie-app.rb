cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.775"
  sha256 arm:   "d0c29aab80d378aece34223b3d5c035e58f284ce66704216f5c0772462692f9b",
         intel: "600e2a3cddfead28caf2fb091f6fc4e2c6c183d09e69c40a919d64dec4c68ba2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
