cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.752"
  sha256 arm:   "ffe6d1af78d338ac52ea1b4dcc6aa76207143a2c2ee704f66f482adb1db05a40",
         intel: "44804418fa5dd51b8d90620273419879efe7b772e8b52854ef9ca17dc9f54507"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
