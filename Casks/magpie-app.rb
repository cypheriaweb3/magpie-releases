cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.391"
  sha256 arm:   "0fe368bd5a18bfa548846726bd7f4366c984d50c99ed9a45b63ba7807ead6ac2",
         intel: "a8e3a1f0a6294602db29195d643fcce44134c1b47d1c0acf97b0be190ddc5e76"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
