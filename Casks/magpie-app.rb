cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.262"
  sha256 arm:   "2630f825462d4eb4f0ad238c80f0bda4244fc14ff3be149677c3a90e1523fbdb",
         intel: "e6a9716365ff05fcdfdaa49b1d6f88e84578ac0f1afab0aceea6dd9ec5ea5ef7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
