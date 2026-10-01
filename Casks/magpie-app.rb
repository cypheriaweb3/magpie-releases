cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.609"
  sha256 arm:   "f6c48fb520347f9ab72dc6799c2f00cc3d662efd0f9ded323fd17bf2d8592778",
         intel: "e40043ba234fdf7a8abaae22b3c99dfd4e8571374f250e175219f1a359f4f6d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
