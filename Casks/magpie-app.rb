cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.241"
  sha256 arm:   "a5063134b4df6c9111523a3fb71be858415e3a6ea8a563a0f386736ff125a1b1",
         intel: "357cb53a1c669bf1306b80c32b298e8b632207eccde4c60d51222643fc380f78"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
