cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.248"
  sha256 arm:   "13d2878509634b1022d857fdb1269cc40fdd0cbf32a7ba56c4d2c17051425e89",
         intel: "b2d3b2bd6ed7625d2310f721228514d685759dc75aa5bdba0524683c295ed563"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
