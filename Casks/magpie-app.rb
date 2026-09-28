cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.263"
  sha256 arm:   "7734b4523c6a6157ed370097c98f003ce13392f55f3b064fc7133c4b3a5242a6",
         intel: "cc0d089e989477fc688ceac6bf8c563cf1a84f674c9e626ec6d8f1be0762177e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
