cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.667"
  sha256 arm:   "d4bf2e533265fb530b1774d2bc27082482e4c758f689444dff806ace0f1620df",
         intel: "cf0be84957f03dde485e96e5637b4be8e3e9ecfd08d51414ea2ded9ce704c718"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
