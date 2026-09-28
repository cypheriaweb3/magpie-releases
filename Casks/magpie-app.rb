cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.275"
  sha256 arm:   "42e61a054a46ffdf16eeafb411d43ee03d4c2911a76112a007693931cb24c2a5",
         intel: "6beaf9f52a5bef0a938621c04ccd8391872d53d66596a60070ba5f190dab65bd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
