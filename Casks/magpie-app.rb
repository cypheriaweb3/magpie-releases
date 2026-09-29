cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.404"
  sha256 arm:   "0f0f6b710dd22e55f99d798e930e84dffa3e8fd1f3b69bc6cc7c60a8ef31b572",
         intel: "1cbdec5b3215347f523cadc7d98f359fa48a593803cb474ca2f38e28d4e95365"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
