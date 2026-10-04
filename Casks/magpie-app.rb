cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.863"
  sha256 arm:   "58e141c01f6f77950d03d4e80c4f2a4515a58fa777bc57e69f31ebbcec109d4d",
         intel: "4c907d6e6b8f4687a38a2286325b7af7b2fd3eff725218f1e810f95ec673ac66"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
