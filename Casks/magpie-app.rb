cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.794"
  sha256 arm:   "5edbf70e2c9a25c9731b95c4074b0d7908396d09919aee1093588501ac681f93",
         intel: "9895eddf55881ed78187a742be84f6ce8b94f1320ff5b23e93961219c881735b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
