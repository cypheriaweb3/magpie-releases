cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.457"
  sha256 arm:   "ed2b5c05afa6ccc70b45f15ebadcbeea681362cab4dcd41ce6c8e9b6d562b85b",
         intel: "5edde3def61e8faba8db3bbe89b149464544119422c6070e8fc564ec6476df4e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
