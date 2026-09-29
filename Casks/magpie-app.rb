cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.381"
  sha256 arm:   "6346651f12fbf3e0040a949f47d2bf62f81c1ad0cba770d730a131d1eb578d81",
         intel: "cd183b25cce7a97df4d63a2fd612d83c055059ad669dcc0d73de19c23f49f056"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
