cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.236"
  sha256 arm:   "05b54e0436681ed72fa40df53664d251eaa4442d024afc7ee6ef1413cd58cdec",
         intel: "630fcab4c1d86dfbf3b312efbe820c389abaa6d61185e2a7f91e1c62943491c6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
