cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.419"
  sha256 arm:   "60981c116a9d7a5326dec6eb38e28243c02b8bc29215d1e3ce0209b83cfa8caf",
         intel: "76c460694fbc2db4504b82f3544fd3bfc73f431145dbaf85090e014a72a4fb50"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
