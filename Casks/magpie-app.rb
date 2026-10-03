cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.706"
  sha256 arm:   "8a018946d145d30ec5baac22765df9180f018cbec921edaba0882963bc21ef8b",
         intel: "da1e1b745579caab8c41ea964ef8598d4d414d0950da3d6f259699e59b1402c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
