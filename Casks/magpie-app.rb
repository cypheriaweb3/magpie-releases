cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.839"
  sha256 arm:   "b49bde8d8c777d337c5c7d2ec634d86792f79e730f0b502aadaf846c1c4ad5bc",
         intel: "e3027e19f204ffce374dfc5271824611003b711f75982629a8882af6958a215b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
