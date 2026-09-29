cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.375"
  sha256 arm:   "d4c168e125b407bdb2a9e231b4364c3de20ea7366c5637daa57cbf1684fb578c",
         intel: "0457ebb5c6dd6fb99d30141ff573433c96402f80d46305484737918108726b5d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
