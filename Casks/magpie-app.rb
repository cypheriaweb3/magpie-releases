cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.590"
  sha256 arm:   "146c55238e0cd999c9a0a72d29c63e4ad180049e2a8b63a71ba468bc8078edf5",
         intel: "e064f560b4e204def998912455fbdddc3b9a82e5188734dd629584fc6e6a59f1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
