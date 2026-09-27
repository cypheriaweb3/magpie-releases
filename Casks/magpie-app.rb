cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.179"
  sha256 arm:   "a5b4a5a1882a573bbabccb47d0a2ba43428f8a2945ccfc14acfc55a89ab60fd2",
         intel: "f6575acb7bde3938f32d7a6d19489b169ca04b7f753055dca6dd3a3738a6864b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
