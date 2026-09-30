cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.527"
  sha256 arm:   "66eeaeef06172a901238bc0a239fdcfe415821cdc54a34c885924532ca7de843",
         intel: "50109870ea5e1ae68bfe015ac701337b373703266ea9451012872c724a6a43c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
