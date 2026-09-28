cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.246"
  sha256 arm:   "330330edbaaddc4f904442c1559f9612bc792d48f517ed9e683678ba0b565498",
         intel: "2e45ee7848a9b8db701a9a68660c079781d7da565088d2e8ab6cc8add4c261b4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
