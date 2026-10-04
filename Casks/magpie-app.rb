cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.861"
  sha256 arm:   "7ee2d80280c70defd423170e067437f009aaf01ad6d1e31441c89d7e8660b3b7",
         intel: "d08ad1409b5371572686041879d0b804fa9444419e8021b08ebc77bbef477303"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
