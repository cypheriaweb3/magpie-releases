cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.210"
  sha256 arm:   "515d05b9d3d6359b023304bf02dc34af32ebf343b8b13c011507c9ad697314f7",
         intel: "dbed0e043d445622945b0f8e9686907a43ac876210359f28239c2293e872ba88"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
