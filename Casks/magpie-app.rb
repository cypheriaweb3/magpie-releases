cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.172"
  sha256 arm:   "18d99a5b74bf14044acf528bcd1b090739481756e2b69137f21183095a47453c",
         intel: "1e578c6503b51ee576bc9c5d374463ec4ebb76ecc4511d6ad1291d73532349f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
