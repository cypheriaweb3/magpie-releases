cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.743"
  sha256 arm:   "62766c0ed8a19ca6415a161225155a09c10739149ef00d1783f0095ef14f715d",
         intel: "5165649d136b248c79e41bc95aefbc6de85247476b5173cb827c80f2008a134c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
