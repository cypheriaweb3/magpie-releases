cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.600"
  sha256 arm:   "7010038ebe2da49331eb520460fd5e9e8e0208ae8adf148d48487b829f1eeadf",
         intel: "b4b0f10fb46abf273fa0ff5b8a0ffc4067e39d7ea1af97e52405ec1fb0286fed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
