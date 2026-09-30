cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.469"
  sha256 arm:   "4a2db16fe5a21a532c26eeb3d92bf42516b38016eb0169419c6b8ab9e872a925",
         intel: "b7edf4d9f0968e73d7f3ad377761d060e117d765b80aac8caf7926259c95cf7f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
