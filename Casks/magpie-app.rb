cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.409"
  sha256 arm:   "caa2bad8a5115e34232243aee9d5daa6638e49ce36c4117b3bf18892455ab9b2",
         intel: "f34c7bdd963c5349518449090dc9fc399fcabbce1f185384994c2478ccac3911"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
