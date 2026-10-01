cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.610"
  sha256 arm:   "541a32f0f65ef59a6add15400147e013fe912a24ba4d8e5c0e3b80cb56f637cb",
         intel: "bd589eb46110837adb32f668af21c899d079b8d291fb6aa861946bad7eedf949"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
