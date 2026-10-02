cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.668"
  sha256 arm:   "267c18fb1b8f7957e5ef5f7fd447695fd940fc38163a495f226710a995861a55",
         intel: "83430d671a7e299e6efcf56ea72a31343e9df4e8ee774bee850f75505cb6b71b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
