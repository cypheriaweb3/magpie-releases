cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.557"
  sha256 arm:   "640ab7c2b20a715d05dec92eea896f0e687634b592c3227ab2e04527324014cb",
         intel: "f37d34f876dc74262dae250d2f0208ab33e45189bea510069153c175bd19768e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
