cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.699"
  sha256 arm:   "f719867d4a972c9cc6d5fc2c85a94f592835cdf03164352180a7b2aa4f60400f",
         intel: "f7419ba2f820d282a04fed34918031a0390b584da7e18774b3f2b14c66579691"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
