cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.304"
  sha256 arm:   "29362b8e16c02735a17f44fb902e2682cb02fc011eca4d0c3c039ba7e98d455c",
         intel: "6ba04ffd2ec08d418c5f7b8deeedd6c61f531e6236e81d0fe2452aece9cf68c0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
