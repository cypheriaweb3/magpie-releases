cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.788"
  sha256 arm:   "d1d63509a97013a3908d889dbde5dbe5e9d0db2756895305b25acdb42121e183",
         intel: "240014e786ae63b68ab71625072d4c132008b1453ee81615ae2354be3263e48f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
