cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.295"
  sha256 arm:   "21152983738394d09db64066912478575731f8970ab0e85d33e8d3034abf5267",
         intel: "ecfe076712f8fad611db0a60e2094e5fbdfda1a1484e4b65a65a8aca41248733"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
