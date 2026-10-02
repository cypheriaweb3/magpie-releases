cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.659"
  sha256 arm:   "93a56e7a6906835f6de0ba0454a76d2829b1e104226eb9da7bc8d82621cffb2d",
         intel: "cbec42b52975b3f8a3415faa0fbcf94bf62415b524bdf12571c0fb4c9e010575"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
