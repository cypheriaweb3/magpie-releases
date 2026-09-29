cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.401"
  sha256 arm:   "c4aeffb0e88382b585a97cd5311dec924bbce0a514f992829bcbfd8e2a799ab3",
         intel: "0d046c11d2791b4120a64c95d1aa37e26f182531181bf3a1313e90d377635b46"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
