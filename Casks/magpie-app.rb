cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.350"
  sha256 arm:   "e179ff49f1aadb5ff2d87f84019caacd1fafab64abec034fe7eec62582d36426",
         intel: "37e079f7c2abfc256a4bd1a7b6a44cf018aa668aa9c94ab6d1af6324f3439065"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
