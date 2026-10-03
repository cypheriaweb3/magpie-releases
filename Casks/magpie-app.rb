cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.737"
  sha256 arm:   "abcc843c239961daf30748880ad3647725bf0e59de0ed41c37adbd956f6ae910",
         intel: "df7c5bedbbd65c57f3e3bff5c2f107a0cfb26ed5dd610ec81a181803926968e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
