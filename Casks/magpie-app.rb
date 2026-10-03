cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.791"
  sha256 arm:   "674ac382835d7fc49b9a7f319bf9d389945f0a37780a24c6084774af5359dc53",
         intel: "a43d2d10c11b7861126e61e149647c970b1b04510fa5e5cd4edd736bb7ea63c4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
