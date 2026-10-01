cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.579"
  sha256 arm:   "943c825c9b765b7616c8ffa211ac23f1304ae241e4c4c06b4880e4a17bbea744",
         intel: "1036c893c20f7eb73fd698e8e3bd7dabce0186af24bd6f31ef3012b316160702"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
