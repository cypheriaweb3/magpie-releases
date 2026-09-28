cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.240"
  sha256 arm:   "7cc3e30bc80e5add144a4b9fc7a407ed6c940cf5591d28557c9188ff31a2aaba",
         intel: "b81acde8c8a1156829fbccd9fbc5f7ca81053d34cb696b7ef96d6951ea45cedf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
