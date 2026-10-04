cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.868"
  sha256 arm:   "aedd5eb4051843a26e53007aa1793cffe176409ea5a4446c8440a795fe5ab2ff",
         intel: "6e4f9a4d377f5449f32efb19e17ac310005e4e977b1b00c37f43f4046412d838"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
