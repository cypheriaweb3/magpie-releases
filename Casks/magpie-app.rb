cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.599"
  sha256 arm:   "ccae02ea1db8ac6eff6b7663ab34e1ccb36edc87c73970507ee2dd52a97a9afa",
         intel: "677162398a0a45c731f5e3a31f6b6a893f02270788d5358f21828989e2c078a8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
