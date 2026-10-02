cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.690"
  sha256 arm:   "b7795cc55e40c6ffc3f27e6dc670029a6825407942445bd146c8a445fa2daf2f",
         intel: "3988f7a1ced6d8463416dac84f0bc750d01b680e6f97cb08757025c6591f5545"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
