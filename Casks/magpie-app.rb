cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.504"
  sha256 arm:   "db10454bea1c2a20bd4ae1d926ef58ca5ee56fe64ace280ba6f5ac35ec58d7fc",
         intel: "cf2d43930397dfc61e6f289c2bbae998b91119c4f2d3078af4ca28c8cd756f52"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
