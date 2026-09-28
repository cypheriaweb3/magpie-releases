cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.231"
  sha256 arm:   "eba5a2f1101864c8d24c57e7bf859c0fc024d1993259ae738175f2be55e617ef",
         intel: "e7c6d51c34fcabe65eab1b7d10ed715bffa55b70c6484bee3b3c15c11a81e143"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
