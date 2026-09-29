cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.384"
  sha256 arm:   "4c652a98a072ba19cc895f0b892792d2102d767d2b05cb550e13b106c9927825",
         intel: "d8ae22b756e4b5c60097da8bc250478d02566bbfb88cf6ad920ce287726c1523"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
