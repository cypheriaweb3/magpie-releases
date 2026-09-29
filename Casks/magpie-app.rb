cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.420"
  sha256 arm:   "5438f1745666edbc5d41c4c65d3e6d6208688938da5131312e3409e3b735768f",
         intel: "ab011d2dd8921d0be3a1b7eb2e06faa13db1e73de7ebd2c306385cb25f967a51"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
