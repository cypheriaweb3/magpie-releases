cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.435"
  sha256 arm:   "cbd863fa575206d18bf9d66c4ea5c4422ab410d51caed2e68127992a5f59f1df",
         intel: "5c94a36d836391ebb0719f7e5d197cb9424d2d243e990d77c9f949ae1019318d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
