cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.521"
  sha256 arm:   "f9a9e270cf7dfcf57436d20a7c609bac3cb0ce5b9062caa09eb2827d89d58306",
         intel: "6b2e55011265474f4109fa64e4abb27286346dd82d51c91130f1b12f094995dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
