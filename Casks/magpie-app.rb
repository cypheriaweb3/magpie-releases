cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.468"
  sha256 arm:   "3401f97de556cf2299993392dbe85a4f02516530475fc200711b8901740a2131",
         intel: "e9ca14d6ba74db6868c6cde1767baaa6372d759cb9db98423ee32942efa6074e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
