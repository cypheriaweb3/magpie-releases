cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.168"
  sha256 arm:   "c7d96db7d6eb30b664c371214e21878d9684118d09102cf4ae937cfe0ab6ab2e",
         intel: "9ba463ae7267f81ca78e62231dc293e06a04e9a9d8b38a4f6aaab1101e7af042"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
