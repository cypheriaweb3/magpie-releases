cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.182"
  sha256 arm:   "adf5a5f6f9b9dc6e2363e477c732162d1616d3ba0aadecd77b82e0f96c554f63",
         intel: "e6a35e6c68a23380564105e22700ce2dde110bb7a9af50567c23e4c6e1b9866f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
