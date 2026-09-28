cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.306"
  sha256 arm:   "2a0f6735a29db6e736faec415bcdfd0ce5a6463dc2fd1a589cd1841cf6953357",
         intel: "9ff6064e1f1a228d750c2fa6baf292898a1dbf10e930eef7002d73d502571076"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
