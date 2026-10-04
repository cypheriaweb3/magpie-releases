cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.888-cypheria"
  sha256 arm:   "a6a8c4329a2c39e3103646d91095d65ce9035dd4299e5943bb02dcfafd753ef4",
         intel: "bfda39693b98e0fb7ee41144605173dfad08d831a86c401a5698bab6f9ff74cc"

  url "https://github.com/cypheriaweb3/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
