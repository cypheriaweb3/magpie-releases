cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.592"
  sha256 arm:   "14c9fbf88dc1653b170ef41d6c1b4c06aa2783cc5d845eadcf6f5f5119d64d64",
         intel: "d0825b98a732741204e481ef215f697bd0a3caeb88600fe50154ed36db721b46"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
