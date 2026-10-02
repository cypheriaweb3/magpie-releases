cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.654"
  sha256 arm:   "909b4a843cb73b9a01255fdc439efa17194e6761788b1db5857def700849334b",
         intel: "90a9462a650b698caacee899eeaf75e1453d13cb95f5d3a295e3b9076013b1b6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
