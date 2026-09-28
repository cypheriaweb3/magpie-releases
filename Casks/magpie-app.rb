cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.280"
  sha256 arm:   "bbf0c4d824c6edbe3e217599245118fd5b81f3130a3be346e02f36d36615c4db",
         intel: "85e9efd2c0f66417bfc9f14511334c9c9a9e87eb8380475b67e730f1f8988f27"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
