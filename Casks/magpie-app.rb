cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.433"
  sha256 arm:   "c003fa68cea2b749a8fbf50ae80b91bfb035a25f85dc08163d5fb54aad4054d0",
         intel: "c0f11055d3f8bc4252afd20e541cd6b42deeff3ba6e48c993023e347451d6974"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
