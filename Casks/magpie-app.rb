cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.539"
  sha256 arm:   "05107fe6c5efc19de98fb6dd7e3ac4dbef10567435dce49ba32d41649f4aa775",
         intel: "ef22b837038d98ec5ba1ffe81b08675cf2d827950943aca172f1b4a7ee60ad00"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
