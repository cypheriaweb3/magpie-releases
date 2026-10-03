cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.735"
  sha256 arm:   "4cd460cbdd62d7a348a2aa9df8e4d4aff702e9664122fbf8e4577060f7bd9e53",
         intel: "62ee958ded877e6b76d18a02a31c7553353f93b0e94d1b264b87d22a7fa789d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
