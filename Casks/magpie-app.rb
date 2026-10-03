cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.761"
  sha256 arm:   "a5d31b94349693c0eb756194024d939bc0b4d7178a93be119480375503cf9c0b",
         intel: "2a28af32aea47064bb50a1244e2d1925ddac48afc8dde272e5701ba3b334ab22"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
