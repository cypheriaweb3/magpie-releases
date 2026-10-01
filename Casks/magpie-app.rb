cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.607"
  sha256 arm:   "7badfef0277d05e006dc5c786e0b7478612423f17927fea5c735b72ff31880e1",
         intel: "b751846cad3b42a15793c25bce37c34660ebfcf2fd4277909673735fd6f950ed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
