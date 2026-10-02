cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.681"
  sha256 arm:   "c1ad4dd582ad91b79d84be02f49b6ba41189730050a5b422986f5065bdc79e9f",
         intel: "cc898b72a48a9af07929390640c750fc92358d88aa9592df6125f42b6e7e6baa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
