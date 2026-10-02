cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.638"
  sha256 arm:   "ffaae82e29d6d6b8914d718743a739b9efcd3928c25d03543df8be5135ef517f",
         intel: "b11ea944ca4133433908084fe46ff04988fada61479b190afdce5275666f12ce"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
