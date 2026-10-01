cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.559"
  sha256 arm:   "e5317544c80f341a6adc532e8db3cfd2d95093ac8b0bf1d5701917fec5284de3",
         intel: "1b411a2b7f1268e094e5e039054c11c4c9142523ed1e636e20a37c58a6213832"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
