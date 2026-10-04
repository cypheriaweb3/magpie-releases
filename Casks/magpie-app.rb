cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.855"
  sha256 arm:   "58616cd11e4ee4644f875061ca1618cb1ebc71b3dbc655f8ff448f6ab2a2db84",
         intel: "90caf325d1f298da5d7f1eb8e207fe8c91da47d7b6097c6ead35968faa6a7f08"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
