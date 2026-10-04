cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.849"
  sha256 arm:   "b7f243b87aa54531591b1cb1ab9c16c560e61230a81ba5032ce77af21dd65bc6",
         intel: "073f559b17f9b981a34d2f81eeb9c4f7733310e632e53db49a875810ccf872e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
