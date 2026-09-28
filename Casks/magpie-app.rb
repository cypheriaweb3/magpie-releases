cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.287"
  sha256 arm:   "587b081917aba3650ed017c6c683637ff5dd2253b85431c10c42b8aa7a60d637",
         intel: "04377360f61fedd98e0f128fb5fb027611ef8c94c1cf56fbcebb5224191d151a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
