cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.546"
  sha256 arm:   "0d6bb6dd783c5f161a2e189ddad0aa5f3166f59e0f2dd5ab4b511ed14abad9ca",
         intel: "fd9f1058db1b45ffaf1da1ef8c11025c6baa2d659960a7b875eff8c5d4ddc8b8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
