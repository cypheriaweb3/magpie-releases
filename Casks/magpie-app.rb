cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.644"
  sha256 arm:   "38f2b2ca28de842c4375f38879903a3e4d034996f966a75d6a4569697509db5b",
         intel: "0f9855be715341038e8afd617560e1e6096655f60b84b477adb82efe408b9a63"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
