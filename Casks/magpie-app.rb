cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.602"
  sha256 arm:   "37dda92692a6e6616f45275b7007ef4bdfa26580e4200bb521263b34d934536d",
         intel: "953b252db68afe4afee5c7ca9b5b61000bdbc71d02667acffdde05e048a318d6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
