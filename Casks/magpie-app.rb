cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.852"
  sha256 arm:   "4fc44ffdb56c236eaa0d26a3651c5e52b4a675be689a00cffacd31f12bd70ba5",
         intel: "227a40e3f9d3c5574c2c157e5bc512d02aecfc1a6a3bd85ab02fb07b2f75b0c8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
