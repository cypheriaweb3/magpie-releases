cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.473"
  sha256 arm:   "57fe5ad2e15027a745e89e302e178eb4b2d00556a63c3de87a644eab333b39a1",
         intel: "5b85a3bb730a9fbc9429517289bc69dee77e3a5ac52c21f3dd68e12f3f4b8d6b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
