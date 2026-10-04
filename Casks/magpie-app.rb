cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.862"
  sha256 arm:   "e0c34453f3d815c939e562ac7b2f2ec050819a12813b77311b36707cd9e0e0dd",
         intel: "2a6e2cfc9a5f9e9f564540155f512cfe92c5f1db12eae623a24696b01a47dc53"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
