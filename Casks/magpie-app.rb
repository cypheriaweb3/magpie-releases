cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.321"
  sha256 arm:   "11ff667f85faeec761a059aa76d310cb413d1d794a6dbb8dd0269a1f7eae33a2",
         intel: "03a2d4639c380544e4c7f2d25aae4cc7a6487eab505991bfe2eaf9f27d8b965c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
