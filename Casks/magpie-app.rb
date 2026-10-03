cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.721"
  sha256 arm:   "81853b482aba0b421e13cdd22328a5aa809104f378cf6e7bebd64e6f883f223f",
         intel: "2d7c936f60ce6e0f2cee1d0bd60b20430ea55e7839107ca5e917e0c64319e371"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
