cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.606"
  sha256 arm:   "08db50e7d680305784f97b002015ecb78ea084828ee9567b626b938b14d4416c",
         intel: "57532b531975c1c071e5db5dffa424b679a3e7dc7dbb051451bd6098ee758568"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
