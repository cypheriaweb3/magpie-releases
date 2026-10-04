cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.869"
  sha256 arm:   "50bbce167610fe1b82e31b02ddadac7ed29bfa743437382c3469edbbd9be8774",
         intel: "ebb30aa7d8cd94af709583e279be4989ebc9c21f6685d4e741185c4f4a4bd44f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
