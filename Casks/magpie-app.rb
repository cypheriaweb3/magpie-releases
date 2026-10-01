cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.566"
  sha256 arm:   "e97220365407b4e0e9bf0d4bae9281bc3719976298cddf831d8cc0b4b94707fe",
         intel: "9e716fccbce7bdbda2a0479544ece80e780445ab8b79a2a07154233894796e5b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
