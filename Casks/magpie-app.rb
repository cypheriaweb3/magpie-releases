cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.726"
  sha256 arm:   "088be0f105acde7c0e86dcb5c1d0e27be786701416600c2253198fc289b73ca6",
         intel: "6c37878b00beb436d7bdff88d922dcbf6186ec59ad6b1a747f822237799513ae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
