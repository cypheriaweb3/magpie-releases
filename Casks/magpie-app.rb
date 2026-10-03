cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.773"
  sha256 arm:   "6cedebd667988ca64c9202437d0fc356a57db3a7b7f4c44a9bddc9d75de7f14f",
         intel: "2f57c792904dafadd8fffc87204c113faf9a9a4b7e495f01dd04d34e8793fed3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
