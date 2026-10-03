cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.722"
  sha256 arm:   "679f41eaa5e825e694e8390429e2576886cb3047cf38cf20049eb3e057b28b24",
         intel: "a888cfa400cd908c45d531bbb91031fefc416c96a246d26735ba6170e53aa4c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
