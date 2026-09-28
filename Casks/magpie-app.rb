cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.281"
  sha256 arm:   "c1fcb9f6481b67fa58032420507daf2920a0a647a5dec224241fbcac706e0220",
         intel: "9258d9464be28ea6b49616da0c64c7672388da99cb3a97fd2c75237a215039f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
