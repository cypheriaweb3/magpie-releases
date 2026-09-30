cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.437"
  sha256 arm:   "623209cae537018b4367c06fbe77b08c40dff225cfb41ca0f024b7db17681795",
         intel: "277eae847a97f888eba42d1dab290f2d347ddda171b83ee1b1192b927aa0bb58"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
