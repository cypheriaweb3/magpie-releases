cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.353"
  sha256 arm:   "24edda3f690d8834e3ab901470b2ff3f96aba4a472a735f9af6378860c41844f",
         intel: "bc8299a2a7ff2a8b2a12711d4d20a1b6d21dd4280e8f8265fedf2fa410384f0b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
