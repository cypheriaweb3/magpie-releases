cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.515"
  sha256 arm:   "6ddc21bbd24124f572e11115e13c24ff6d3031bf342c1a48c446713ed18af34e",
         intel: "33a1034d65f7aa17f3ea7c190d984698e9d43ee750b25a10f450c931492d0cb8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
