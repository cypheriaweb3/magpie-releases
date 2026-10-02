cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.666"
  sha256 arm:   "16f3ff7008913c2b46ae3d1ecba6523a2a61557f397483f437f1233dd9b43a2c",
         intel: "11f2d992189f71fed7a93a7838d784440f52d7b96639d509d15e9a98ebeaca8d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
