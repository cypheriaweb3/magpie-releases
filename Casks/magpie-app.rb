cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.656"
  sha256 arm:   "55ea0c875a8d5a02613513bce957dd255093185ce50c2d8390ea68e9ebb571b1",
         intel: "c72b945e86ea026f882710d65ccc225babf0d64a9ddf5199499ba99dc451569d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
