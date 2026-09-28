cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.343"
  sha256 arm:   "7fea8d86ee5376bf37231c7c3854ecb8c27e2c0ad0616af817b42e25f1fe4e36",
         intel: "e676caadd0cabeccc7ae0ca880c8150ff327c9711990c88e1c9158244d0fc730"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
