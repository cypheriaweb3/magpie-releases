cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.701"
  sha256 arm:   "6d350c585491a6ba1b5a516c321c78640446ffe6a434a8700cf29d25f9e49928",
         intel: "fea826c758ca92f5c0120f1bd7ef7c42d424b34dfda59f825c013d3c2a281ee2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
