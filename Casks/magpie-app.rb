cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.370"
  sha256 arm:   "7c7aba1907e8b15ff6c42e1b6eac62d336f71ef8bccb1273cea892478ed062e8",
         intel: "387b2c4e40404422db9cac7002cebadf620b7c738b12725d003cb061e0947f04"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
