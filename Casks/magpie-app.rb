cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.741"
  sha256 arm:   "72743a18a3fdea4245501cd0f07e188a093b1843e47feb211c09d307ea59ad95",
         intel: "e6d8ceb727458095f8639f85cc337c35c50883c9a3a974ec665534db025db0c5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
