cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.733"
  sha256 arm:   "d91cf9f0fd71e3d74785ca4d3d70734378b7d2e46d7c10dfd844ac188e13706e",
         intel: "2615ae02ee3b995569d19eab0f2c9dd847df0ecd1f8c035e8c93bca4fbfdaa3e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
