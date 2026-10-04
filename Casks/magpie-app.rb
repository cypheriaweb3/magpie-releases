cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.823"
  sha256 arm:   "8cf0e23ee463313d97126ea5c09e30bddd73f892f5355ea2f790604cd3447b09",
         intel: "b472c7747ea38d2128852e9b33616e3c4638c7d36c8af6a87eee878205b6106f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
