cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.736"
  sha256 arm:   "276e2a5dcee1399bcc05c757f458ebd7afaf6b68ad1202728ba8a594c47401ba",
         intel: "679ce5e5cd546256e8e29171aa5deb8b6ab601b817cbeaa0609e19f9ae3cedb1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
