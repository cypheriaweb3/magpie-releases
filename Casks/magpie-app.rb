cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.846"
  sha256 arm:   "13684d30b86af236e765b63ac552dcb822254928b64085e65612a4e292fd72bb",
         intel: "dfbe721d29d13b64fcf4f11b4781c591e80331cc945ba2d6f5d3eaed3fb64b39"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
