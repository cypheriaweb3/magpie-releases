cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.561"
  sha256 arm:   "69c0eec325efa3e21d692a6b8a9d3e9b63d22d1f567e21c68af36be7935b5544",
         intel: "c5ad8e81fe0872cd0e89f6e62ffd732014ab3b8b86f03a97e380d5dc99bebbc8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
