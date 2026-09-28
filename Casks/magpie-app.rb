cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.308"
  sha256 arm:   "2d73b7247a2de23a538c215d481ce18a50597a28c823afa544c7f430de6336b2",
         intel: "31236850dab7e78f31396737c9b6a1a42c4737f257ff2059eead487aa43084ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
