cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.628"
  sha256 arm:   "bda7a5b3febf2d198086d85251684fd4a84fcb9c1574d4c6c39cf69a1a6c320e",
         intel: "47ecf90518b7701fe9092e578a0406fbc967406d459ef7f58f9d6b8e5f680ee6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
