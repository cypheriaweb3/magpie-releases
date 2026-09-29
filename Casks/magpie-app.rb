cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.398"
  sha256 arm:   "fec753e48b1a45f472cbe53bc99c62a739158da49ad9c819b302babafcdf48f0",
         intel: "43dfe6d0852a8877b31c2459aa8bcbae088575d1a72d377378fb374e79612517"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
