cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.459"
  sha256 arm:   "850cc7667b6929fa6a776d48d08ea06fd64a14e0cbc9de651b8bd7d012269b52",
         intel: "4b8e482f78bf2d4899f8e89ebb69a94e570d8c971a541fdaf6b19c1917aaa726"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
