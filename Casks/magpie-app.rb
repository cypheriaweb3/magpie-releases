cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.646"
  sha256 arm:   "fe28c46bef8342dc3637d2db9b571974f1769a811fa0bb48f9b6221a12e43183",
         intel: "44fa17f3f479e8fc99a2681f79dd144722bd8f5c9e6c6860f3200a53357c46e9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
