cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.341"
  sha256 arm:   "1277782114417a517b53fddbe86d2792927aff0eb44472ea18a52b054c3c2232",
         intel: "e32238ad12c9352529fe9e0e7f2cf88148dc5ef68e14aa5a553c1c4889291073"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
