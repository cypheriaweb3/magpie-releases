cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.853"
  sha256 arm:   "89215fe81eb0a75577c856a6ad3e02cd3fabfcdafdd3d411fb6cacda1b459748",
         intel: "04ac7ca7586defc01f683c04ee4022c8d52fce13688f639b792fc781cb3f3a75"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
