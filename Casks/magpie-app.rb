cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.185"
  sha256 arm:   "dd284e5f99ffd56aa7d1dcbdd9bb8cc1183e1be2f821e618c49db1975afe97e7",
         intel: "be4844102f9d18b6bdf41cf7194763333c37c32613c51f1d84254a0d29ca4db6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
