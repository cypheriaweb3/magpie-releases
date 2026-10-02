cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.669"
  sha256 arm:   "1244863b536313ea90b771d06463f4585194f7554b60cbba231086a658cb5836",
         intel: "8999382a09d5ce18be76cf4f01b1ab7e7d40bdcb608e8530a53399accc0c09a6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
