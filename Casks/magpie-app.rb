cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.641"
  sha256 arm:   "6a3fce657cc7a11450155ef55bccd3fb16564251420448d3616f29c01f3b3ba5",
         intel: "3a0329a0ea8587c89f8f3342298586d55bb340b2f9c538a0ab94a61e935af9ee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
