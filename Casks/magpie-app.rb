cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.694"
  sha256 arm:   "7a5114c47f6f21035abd60cda92c7ebec29754db1391a79058c4ef30d1f2dd8c",
         intel: "14e9528ae604b622db79f7b10a7bb27ae4f5120d1a7d2c3644e7c464637be4c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
