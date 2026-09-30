cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.495"
  sha256 arm:   "c9a0b2abe6f2b9cfb2ed7794a1d36448781051add7366dbd9deff83250255412",
         intel: "35d10ade415bca277161ea856590b277df5f6c5ee3b625080b1c1b80dc60a1c8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
