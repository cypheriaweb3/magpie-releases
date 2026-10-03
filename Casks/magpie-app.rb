cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.745"
  sha256 arm:   "2b0f3b8fecf47a06301f3fe4be0d1e7ec500b306423ce22810af6ba0aafbf7f2",
         intel: "440d33b881f2cffab457c6382a8c56021c73c5905255ad7cdb1238768f86fa9a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
