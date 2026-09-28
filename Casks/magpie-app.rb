cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.339"
  sha256 arm:   "ec318ba2078c9bb2ce0763bb026358b58679c59461c76d87a79d510c1b8f39b7",
         intel: "5d89f20463f88a24bc33bd6860b3c2e4ea7c65b106de323d0c83cab7e73f05a8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
