cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.772"
  sha256 arm:   "8fcea3c1e0a46e2fc2e4a507ef428526ee6ee09b22116c432862f3ae82b62671",
         intel: "c16eda5491102cb57749498a0460eb7ce3b7facfe295f285e149d81aa1daf6e8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
