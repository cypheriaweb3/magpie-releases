cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.508"
  sha256 arm:   "b04c009f64b27d42504adbbbe0bb7f70cb0066eeb027cb93bda6606e7f20caad",
         intel: "5c9dd88d80f9a513363821f8377c5082f85b35bf27c41f369754731c2320c571"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
