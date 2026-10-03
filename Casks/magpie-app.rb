cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.774"
  sha256 arm:   "570cd50fc9fe3be774f401fe5c4a9b584c6ed17a91c6b05d0bd74d0bfe889edd",
         intel: "0470b672bc9e3cbb043c3afdae8763128a83a0e1d870e4914c0a0380bf1a087b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
