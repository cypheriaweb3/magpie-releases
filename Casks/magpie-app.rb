cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.288"
  sha256 arm:   "399a8cb7ed2a3d489de005c319eb63ab5bd927e671430b4b0eb5465fec7b2c7c",
         intel: "708e5d17904e116e063a4135782f6bc3116596e09f15199aff56cb2ae1883e4e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
