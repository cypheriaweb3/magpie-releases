cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.193"
  sha256 arm:   "fb271e41559806db5a16b836e61fdc7ef379d3505a7347143d93639b20c56eb3",
         intel: "34cffbfebc558c0d69fc05ab628d8f89d7372540964c079f37438808216293cd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
