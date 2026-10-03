cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.730"
  sha256 arm:   "6dd8903a9016869a0652f0c5fa4cc82e785fb1f1a29d8d06df61ea9557dea112",
         intel: "66c14bd0fa1d83cb09dd2510d143f180ac9f9b6dee8b35899a45e1e5f7f6e3f3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
