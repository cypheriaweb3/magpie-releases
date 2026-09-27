cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.165"
  sha256 arm:   "a1a0369089fb1feb22c9e043a6c9dc259820405f4e72f9974e04de492943fe2d",
         intel: "bd7a01c0ed4d8d1c7bd66f2c159f36fa6d9234fca2ea8f71348cc04df40cc25b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
