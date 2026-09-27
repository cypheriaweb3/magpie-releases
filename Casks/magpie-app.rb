cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.174"
  sha256 arm:   "c4679c199b5b1621ac4f66d08c4dd4013d3ea94bfd5ea0bd92d991b2f3fe9a84",
         intel: "3735f7b136e56b62132318b60671bdfd035896aec5cab6fddf943a6013b8bc17"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
