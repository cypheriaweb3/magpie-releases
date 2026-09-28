cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.312"
  sha256 arm:   "9c104b5e98ec9a0ef8dd35a9f3e7f5b4456dd37b9d47740dce5a6944954eda79",
         intel: "7681e27ca4d30b786018bee5308760b09f4b511dfdba754ea87592fa9b7d1662"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
