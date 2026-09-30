cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.537"
  sha256 arm:   "8d4be2dc241dac5beb114fb73f0226853e7ea20aede53998736e7a2c60e62d09",
         intel: "c7cc6df78fbe2b78cd854fdf00cb04cf5c32b0c7ad66885ead446fb4788caa6a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
