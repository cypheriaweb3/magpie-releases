cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.222"
  sha256 arm:   "446c515d9f3b488b39143e2c583e86981d64e55075519a2fae78f2e795f9d1dc",
         intel: "c5153390276acd5fc5c69e69fe0909628e4f1c151cf6172e24aff677d12d7039"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
