cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.533"
  sha256 arm:   "ccefb74bfba16ec7cba8a7e9fc4188bfc847508c56f7d8e2a0d46a439d24dd8e",
         intel: "cedd88f119523598350cd78e1df3bf69393da1d41a7adb07a7131663d2851905"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
