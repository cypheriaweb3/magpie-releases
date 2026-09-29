cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.430"
  sha256 arm:   "4f33f8bc417d8b91259d34df8c47c16fae47e6da1389789a0bc7d2788357d3d1",
         intel: "4b278b723c40b29cad18f0bc07683772dd30cd51932fb03e003321b6d458314c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
