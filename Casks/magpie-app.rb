cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.290"
  sha256 arm:   "a2161e705902359b68c7ff69013b342e6d9126f476a24a8e270b950282aed912",
         intel: "7a5b95e3ce3c7f15ed31ec3d7ca087ddda90d84b59e1a089943ef8eeb6af5f31"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
