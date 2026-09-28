cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.336"
  sha256 arm:   "574b8fec8b8932f17e74fce62cfd07715cee2f1a87a372a4778245efc824f8fe",
         intel: "3b08ee9d9c7adcc4f97bd73175b62f26b2fa8c545a2215cc1925fc8ee62e08cc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
