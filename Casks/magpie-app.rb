cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.749"
  sha256 arm:   "3a09e5c415f01cc1c0bc36d64333fb5850f55d7e13034ae6b401b694604d7a15",
         intel: "f37b09c3f53d32e2d6c94cd59af356ccb61064c9aeca7f19a2f7e8c10094ab4b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
