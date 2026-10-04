cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.805"
  sha256 arm:   "a742187b4b705a877e4e66c352e0e26320ce349d4c1e4d4114e67531877eb030",
         intel: "dc2c54de07a574d04b7abf30ebf65f28ba3492f72acd03c5c280e51d13eccd5b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
