cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.237"
  sha256 arm:   "b392d4ffbe3944916bc30ea63375cd97d7ea36179380d067f0b6343dff9d5da8",
         intel: "c24b045cbeb0017616572edd65174255950ffa0b6f548c58f4988493efa5530e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
