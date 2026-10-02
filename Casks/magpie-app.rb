cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.629"
  sha256 arm:   "23d5d14cefe7b7f34f388451180e8466b8727b693a1a07d4352790ced3f0c4f6",
         intel: "8301f35f6042b5632eea4e5ccfcee436d0b25f8ae91c445df97ae075eb32052e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
