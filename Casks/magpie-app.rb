cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.742"
  sha256 arm:   "0e2707051a93c57bd7cb49364fabfa29cfe1bbe19ecf15d166cdb0d36fac28c4",
         intel: "d867e7db2681c0f1a70f5426e89268f382399e6942af3562bc7cb37577e8dec4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
