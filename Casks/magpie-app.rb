cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.834"
  sha256 arm:   "2ed8aaad67cf9f7afa24ead894b1e4346bc8d73be38bc07b27d3135b5af2ff75",
         intel: "8ed2b9d35f9bcea8327fed3d136903500bab052010968d84dcdccd054a6e5caa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
