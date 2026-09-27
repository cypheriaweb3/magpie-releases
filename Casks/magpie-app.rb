cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.175"
  sha256 arm:   "d39d25d7c45565370de2581c2b90a8ac5528701a9cad7218baff531d20d7f98c",
         intel: "f73718f64e3110efb25efdef8787b5fc6aa456d9b3926e2f2426dc22058ed079"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
