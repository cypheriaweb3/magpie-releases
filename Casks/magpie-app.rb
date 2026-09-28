cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.332"
  sha256 arm:   "bcfeea6a583535cb7c17d153567f50876ab5818c200e7c88a277690829b98435",
         intel: "54834e520575acef6971e25f476e38e04b34622678dcba3c3ba8e9bb7fdd6645"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
