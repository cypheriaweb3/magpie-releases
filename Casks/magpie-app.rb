cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.762"
  sha256 arm:   "aef4bd6c1e3f365b7cb5c80979977ff7832e61b90a934facee8cb7a33256c207",
         intel: "2b74d1a4aeaa4c4fa2b67880324a8367b929d35982d2a5329f2e42d8fc3aa167"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
