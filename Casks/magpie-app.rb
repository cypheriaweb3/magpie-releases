cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.383"
  sha256 arm:   "46a6c7091d1b8ef979cdd085ed33413f4c7be0569cbbb8f0293149ea79315adf",
         intel: "506a68e81a6a17f00196151dde49abed647fd0467b0b2cad69893bafe68741d2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
