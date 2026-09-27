cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.190"
  sha256 arm:   "399bd372fc36ed0b66cf8d4daceae8561fa509741e6c87be1af874f067010c70",
         intel: "9f21c6c4367d2ad6b8c3a37a6536a64e167772c13a7e29a9c562c97b3a2c9591"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
