cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.215"
  sha256 arm:   "a1fc8067a1a69994d42bbbf9eb472c20d6019601b5e88cabdc04269e5c68817e",
         intel: "b4c22ae15184bb0b51f072682bdac3c41e9a8143ab0bf4934b0cafd22c5ec970"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
