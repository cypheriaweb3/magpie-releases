cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.487"
  sha256 arm:   "fbc6507c14cd7bffd57efee4e95b461da17c3ce99443e164522caca9db893057",
         intel: "3f708c637474ad4aa42b3855f135e9eb311156db4aca9765c6f9d14bdf04941e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
