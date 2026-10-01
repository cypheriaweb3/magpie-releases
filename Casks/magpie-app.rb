cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.575"
  sha256 arm:   "d85519fdc0490d6b868d4cabcb59635bd368d293ff64ef88799ebdf064a0e504",
         intel: "9ce7404b86ad2ada62550c41c02965ef783ec0b83e10f1d8910a49a504366e3c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
