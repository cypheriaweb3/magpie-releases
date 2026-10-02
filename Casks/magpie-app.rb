cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.634"
  sha256 arm:   "e9f6c17e05524cf341259a26f66088e61b395c46da4d2150f4706acf5dde83cc",
         intel: "2c3d0342a7524217f235728da50bb22efe3dfcddf183fa7d7ad9de359b30df65"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
