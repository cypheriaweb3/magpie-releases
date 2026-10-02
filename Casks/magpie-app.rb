cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.645"
  sha256 arm:   "cd95a7ddc3ccd5f36752209e4ef2be05576b3bbbd1da5e61cb04fba3fe58bc24",
         intel: "e19df526f87ee7295165e1d6ab02ca931865aba449a30173a9977a9623aec57b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
