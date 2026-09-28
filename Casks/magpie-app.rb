cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.298"
  sha256 arm:   "b51ed3cfe1be54e0e950930908caf4d94ca48d9a1e7edff91ff9a6bb6f6f0dcd",
         intel: "8835ed674f6542b3fef69d0b7be05c2f5b2a70aca8408a3038c7c6bb2b663100"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
