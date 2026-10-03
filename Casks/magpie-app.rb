cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.757"
  sha256 arm:   "040d7ea7d241f95c97e0a2c2a7b590eba28a69ffb5e051b60bcf38f2da122538",
         intel: "6ba9fbf6e369c36a601d0752cf56b808ae7b4d7e67e845e6544aaed6b0a17194"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
