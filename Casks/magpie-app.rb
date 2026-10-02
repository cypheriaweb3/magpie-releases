cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.657"
  sha256 arm:   "0f98e97d4ecf0a5358f8793500db977c3814c3d30439badac6d0a6fa7a0159e3",
         intel: "1eb19f5e14d9e0f33a96e3ba98b0dc05bdee664e6cfb0e0bc299c825bcae740c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
