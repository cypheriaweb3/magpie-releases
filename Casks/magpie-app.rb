cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.809"
  sha256 arm:   "542860d812a25f38759855cdd3e492da9b74d6720d05618e0621e1d5a189bcf2",
         intel: "8562d864f60c059367220c66c8e7164ebb2e9a3ad6eb6d0f492cf23a7039668c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
