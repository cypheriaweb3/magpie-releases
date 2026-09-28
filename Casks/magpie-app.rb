cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.250"
  sha256 arm:   "72473e01e30d5216eff5021bc2ecd014d29568e0b36e2d40cff16e4221037879",
         intel: "70ed5c853046cb15bf2f8b14a50f30849330ed83f0306e40de7d17bfeee765cb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
