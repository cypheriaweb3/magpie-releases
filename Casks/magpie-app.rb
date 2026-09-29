cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.408"
  sha256 arm:   "466484306632e748d1853d921268afc707c83623604fb388c5b2fa147caa6307",
         intel: "76b7b3d9df1e2b606f0d30a3666821eb50f73d6c1270b52f83ab165582eaccc7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
