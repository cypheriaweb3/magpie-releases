cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.214"
  sha256 arm:   "b20ea5164f4394078bab77591aa423919ef93a90442ab671c70e7d2480b53148",
         intel: "e90e99caba20706802c1ea38f38da1f5ba49bde29bc8c922fc74c7f7e58b7868"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
