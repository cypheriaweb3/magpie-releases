cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.585"
  sha256 arm:   "b0716e5e1e22e301ee48a7222120e558fdc60111c048c17e7515faec59ec2f27",
         intel: "ce5eca65c33f1262ce91f8c1b9fd76fff57f7784eea8757f863f515229a85171"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
