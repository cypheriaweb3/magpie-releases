cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.330"
  sha256 arm:   "e3101060bde8dc3a41f0f71cb58a5f9d4c2269790a3723b1014f00c5a231aa81",
         intel: "b2f6df9301433d14a7367a40b1382ad2db2e600896353339c86a521e30405b90"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
