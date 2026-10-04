cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.819"
  sha256 arm:   "3c354675d637a8785b969cdf585035c15dfb2e223f90795b33b27c41ac47772f",
         intel: "2b9253e091e673674978f181c4ef16828188020e596d6cd6363709c8a5bda660"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
