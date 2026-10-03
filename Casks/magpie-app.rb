cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.715"
  sha256 arm:   "f2e47e508d006e3d1510bc520b41285c1cbdc82f22333736a1db45124f1a8cea",
         intel: "3078f5165b8dce667d0c1673d5d3eb94ba43b4280408f7ca4f29797eb8c38d53"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
