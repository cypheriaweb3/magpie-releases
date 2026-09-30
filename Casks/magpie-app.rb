cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.470"
  sha256 arm:   "91f14a5e34132f1606516fc5eebe9234342a49d58fd6990ce6c25622e95c37c1",
         intel: "baef29d456b4088db0702782bcf66ad732f73369a63605434a82da2f44430668"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
