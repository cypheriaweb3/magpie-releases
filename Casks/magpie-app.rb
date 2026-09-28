cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.251"
  sha256 arm:   "ce04b431b4564e974cb1d03afcca1ae4ffa6d4f7fb30c8cf8399cb8cc8bdea78",
         intel: "df3c69d4c60ed89f2c45bd07032ebfef6c9e4a77386033036d6fa3ad8754ea07"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
