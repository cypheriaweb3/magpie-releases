cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.465"
  sha256 arm:   "0fad33b65b2019aa6ce7bc517495ff5bd0de930f09a1b6348387b430d42ea385",
         intel: "6d2a76e8ccebb9c926368274b477abb6aae585a5d747b733718adc50080c9a60"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
