cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.564"
  sha256 arm:   "bf657c4022e7cbbccf4f8606e4c1c420f4333b725663d883b082d62ee7496fdd",
         intel: "0016ecc332be68df389392efa8110895c9fad02a46c496e092771a71a859cc68"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
