cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.505"
  sha256 arm:   "a5e178b61fa51188c98ef48030a46b805f1e55e6ba6b45e1fb5e762c480db6f7",
         intel: "0e71e6a71cca38e9a190a69969410ead1493a5a1174c9cdeb6552523627a3307"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
