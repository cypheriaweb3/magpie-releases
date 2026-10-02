cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.621"
  sha256 arm:   "0e1bfd9dfc40097e53c495a5f064ce63248fac8ae0cb13762a712143a3b282ae",
         intel: "8cb129378c10d4e524c23a29c050227e02e58418acb2ecf859e45c4e393584f2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
