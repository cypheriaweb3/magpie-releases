cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.572"
  sha256 arm:   "46def4e7f0e83a42cb91facc5d5f2264c6e9b9959e86947c0ba1f68023c6f72e",
         intel: "a664c89785be80e9a4d37a3ce9fe977a6ec5cb09559a1fb36b48fe49022e33ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
