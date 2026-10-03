cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.720"
  sha256 arm:   "ea7b872183793806b2a039435a0d9fdc2af97bda09ef3fbca296a28af4f5c036",
         intel: "353ce836b19e1493b56477068fdade19614da976e7188e87ee0bc2ce0b160f87"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
