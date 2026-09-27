cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.196"
  sha256 arm:   "61ac45974f6396ac725093a9fe77766e3cbba250a34ae1daadc8b0624f15442e",
         intel: "64196a0630cf2a7c4490571a638d4d385a7829829ac16401becb0645a3baea93"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
