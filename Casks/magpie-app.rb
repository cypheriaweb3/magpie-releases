cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.801"
  sha256 arm:   "b50cab3e88863a3093465ffef4bd512685f41bc91f223f823c6be0278cd4b9e3",
         intel: "b98056639c5d580e6b147a0dfb098ebc9fdaa0ae4bc5595b32705bdcf16e3d38"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
