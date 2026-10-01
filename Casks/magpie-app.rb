cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.568"
  sha256 arm:   "5abe62e84ff7a2e6fa319b045cdb24062867931322ef64f1a46de9c3e7819396",
         intel: "518d1561a689f6994d9ff34b8ee30feca4f58dd9543913111b6d49c8ec078b93"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
