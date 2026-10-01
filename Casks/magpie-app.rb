cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.591"
  sha256 arm:   "4f0c1f2f56dd5deec22fc25979d85edc53298dd0acfb6b507c9e4e0984dea6ce",
         intel: "96609924bfa2290c78e9697814e53a7e8ede41e570b8d5152473e2cef7e0b508"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
