cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.563"
  sha256 arm:   "da68cc020514d26aede9f6b255626fbda054c8f34f528017b65b386318d6a76f",
         intel: "119c5c4a5c768131d095ff99beb906ef1c6880ad056b5ca4e3ccea845e2c887b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
