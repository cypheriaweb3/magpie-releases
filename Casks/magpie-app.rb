cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.672"
  sha256 arm:   "797b57851b12608be783bf7aa8efe61532681845d38cd2fadfb50e67c792dda4",
         intel: "6b6bf297cd8cef1f86b9a6236daff7d4f59f989f71c30f6088ec2b550e884afb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
