cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.825"
  sha256 arm:   "056d580d67f5dd2306b0ad7485e269e0e7b4474171220bb2136a1f70872269ce",
         intel: "69ded7d6f47dd441b2c978ba83bd09ff7dc5a9247c55189d77c7bb887789b23e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
