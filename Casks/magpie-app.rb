cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.220"
  sha256 arm:   "270b66f731212d25fe6ecc1a729936a7b2719b268692f3981468e75cfcf0f9dc",
         intel: "5a34b262add2c586edd797fd357fcd384f3d4418f23234dc9fa8366f15394e0d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
