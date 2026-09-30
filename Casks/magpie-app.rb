cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.463"
  sha256 arm:   "7d1d3dd9071fe2c6172601d3c74338339c0a34d1ff77ca037683389c778f12e6",
         intel: "390541f34e016d7d503ebd7682584bdb59a618afa48218e7dbb2e40f4db3ac03"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
