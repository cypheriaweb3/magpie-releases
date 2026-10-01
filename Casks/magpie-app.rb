cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.589"
  sha256 arm:   "50ac1392cbbbc645f09b8b562636314717093a1ad399f2a2f2fdf64604884088",
         intel: "cf735ff34351995d2e875e06ce9daf24eb937d1e8344b20162e0f0273706de0e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
