cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.738"
  sha256 arm:   "7cba8bb95afedf6863d03e76038b44f2ad4358145e9fae510cd2b194febe1687",
         intel: "570b413f9aef8702735086b6a6c171509e431782f036aa8a8e9fe09db88a4ac3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
