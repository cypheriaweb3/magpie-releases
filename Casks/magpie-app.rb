cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.285"
  sha256 arm:   "9a8dc43b6ce717f20e5c8f6417aea9585a93e50a3faefce645e8f67ff34398a5",
         intel: "398cb8ed5d03f48a45da363213e45ac3ae742f166590f23e50c64207d343fc0e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
