cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.347"
  sha256 arm:   "515c3f84e3c6fd8b8a0940cdd136608316dc7d0ec34d85b0bc3f46a2fff461f8",
         intel: "435949a6c66694b8749a3726bf7f0db10d355b6348ae07712c0fc1537664b1ae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
