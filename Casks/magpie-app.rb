cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.230"
  sha256 arm:   "ce8c6d726c61b969dd861e86d83f381eb56441eb175d594a07d6227dc1ff58e3",
         intel: "8bde5269c6a6f2e2d51b9dc49727488ca97ed1bd70b108758cf914238e583ddf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
