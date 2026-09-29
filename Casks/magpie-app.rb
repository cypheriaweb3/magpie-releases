cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.431"
  sha256 arm:   "0ffbf9d15bc34b35015159d1379302120861d5bcb4eb31162398cc90d838803d",
         intel: "c4402c0136c84ba0535e16d41a4285aefb46136f27420b0976110cc16e84dc41"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
