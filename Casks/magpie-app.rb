cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.879"
  sha256 arm:   "6bbcc7005f230dc3080819643f94f5839f0a18b8305b81ee02597787c5d01a06",
         intel: "55fb679b227c8d906da8f2ea6ab800e8f3b24b6ad37726e836ea68f75504d700"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
