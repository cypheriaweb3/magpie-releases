cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.493"
  sha256 arm:   "cd428c61052267ac8a945a0bbaa997444fe4809adb556245ce4177c05f0fbf56",
         intel: "d6851fcd2a1b26ef6fa0fcfbd92a351ae14ada46ebc783f9d61a7649319bcdf0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
