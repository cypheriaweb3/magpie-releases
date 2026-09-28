cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.277"
  sha256 arm:   "33a8e52f8f97f3c34cdffd66a3a033567dcc86e34196b1656be49dc963f607bf",
         intel: "feb16bbef0081102363cc93647bb79daf3c96bbf0aef546ce58e52499e4b2e2b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
