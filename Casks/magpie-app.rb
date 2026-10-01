cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.574"
  sha256 arm:   "f0e07587e6410f56ed8a63242aa758fa9c45b9a36bb9ed47af65a4fe86cd472b",
         intel: "717970ef72054e685681450b9abc5ca8383be9f44c8093e7445fc3a15c78eed3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
