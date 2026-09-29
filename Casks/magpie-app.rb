cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.406"
  sha256 arm:   "e49a7f3b92144619c49ea78626f9bf4c0f66e2215a959c7bdf466ee5f9c77ab0",
         intel: "d8297d115d8ba398528515eff82a0cb39277ec1676126e24b8c0557bf6f03cc3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
