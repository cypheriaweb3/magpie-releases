cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.211"
  sha256 arm:   "994a4dbd682556d05197074deb0bbd5d5fdf38ede8edc9d44f1ce889bb387328",
         intel: "ab14646456f021817d2001f4843116ba7b03ea59a425800532789f7decd2e9fe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
