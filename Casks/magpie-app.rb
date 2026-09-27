cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.157"
  sha256 arm:   "45e84c2d909976ccc913ab81d59ae77951cc9f5f683063dd59182366d540fc4b",
         intel: "de76428810ed85ac96a9d38a7bc6c2322b51cf45fbb7bf050ac05a63c909fd94"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
