cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.670"
  sha256 arm:   "cbefbc096842030c4d8357c176b206f5eea57862876fd97b2b51db0ea1a0547a",
         intel: "d674b8e3802e120df28ef97ed99b7fc83f29a53a15d7ba42f839ce4d768e63f5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
