cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.422"
  sha256 arm:   "9b6e6393da522a000b6f057d09196fb077a90a2b27aa9b10a53ffaca40f5380f",
         intel: "8d18b10a75e6ace5c7b7ae03756b7404793f0c46402411e49c14095b7cff15a9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
