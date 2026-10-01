cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.570"
  sha256 arm:   "0ea4fca256933a35bf9e5a7be3b0826b18f0a5922bd9b0cf30a7bfbce24ce1e0",
         intel: "6f78253b3afa586eac73ee1d097c239c92b58c576645fc8acdeb79a7f11a6718"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
