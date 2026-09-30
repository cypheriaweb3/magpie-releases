cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.464"
  sha256 arm:   "2478ed964ec5403ad405b7c9f9fc0f9309a5a54fda10698ed8fe7ef4d7dddd8e",
         intel: "0b47d6100ac768cdc09b6f312128ac9f3a1e69fba89019affa695cd8c39ea12e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
