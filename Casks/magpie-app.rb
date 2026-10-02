cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.653"
  sha256 arm:   "6a30396b50380825526b46dc07f0b3badccc3bf675f8668a4246d96949451aa7",
         intel: "b7e66c292f478e6031e14261d704ce8bdc11e3f470b36a46d1244854769ac242"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
