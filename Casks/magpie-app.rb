cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.484"
  sha256 arm:   "09bf09ce7bc8ef8111a6cfe8e8095141af4a94861e210821ca5144f49dad9677",
         intel: "668075b7453f779ef750ee4f5cc4a3ab37ff6f1a786477ae57363b3de650a034"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
