cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.499"
  sha256 arm:   "5e81bf3ccf2969c99bb6e79e3e7804d1b6d2818c9f6773d50a61fecb76cd1d73",
         intel: "395a35d043872a1ad3aefc0929a0a2d7e1170d33d2efb04a78848b4056563002"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
