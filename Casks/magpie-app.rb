cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.411"
  sha256 arm:   "8d01ed1b698ca11689c1ce011d0156d9f945b4ff511da76bdbebf2a16b094565",
         intel: "ae826fbbd23eff1065418ba03d04b15ece3e823aa38620af909e799f9ad9726e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
