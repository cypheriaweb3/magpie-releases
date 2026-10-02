cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.658"
  sha256 arm:   "a9db35ed93b38fd15dc150fab2a14322b079922b5cdfc918bad33590365b61cc",
         intel: "5b72f92f897eab6466e0c068b46dbf6b276b3ced88abffd3360859d38e847bc6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
