cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.729"
  sha256 arm:   "ac3bf18f528a91b4ccd28124dc2fa04e800d8d0341e7c6735b5e825b1f1f80ff",
         intel: "b8a1bcdd8c05468ba3055140f797a608a9d7b647793766c627279f87e99f4364"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
