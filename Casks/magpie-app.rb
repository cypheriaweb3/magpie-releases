cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.528"
  sha256 arm:   "06ebde534aec5f9994b5f358d2b59f160b1f699a1c944ec328aed2d8187c1549",
         intel: "e9caa536823aa53faf8c9d1aa9b7b59ced3f040ad2c6161e3bb22250cdd1b8c6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
