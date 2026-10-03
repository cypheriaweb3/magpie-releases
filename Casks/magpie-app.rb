cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.798"
  sha256 arm:   "eca60105187fb4dbc9eef3502dcacc4d48f838bcc201c09ddf5648291d6a8ad3",
         intel: "4a00db9dcbbf83660088eeabce19e2804ddf3fa349d0b9eb58e251a4019e7fee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
