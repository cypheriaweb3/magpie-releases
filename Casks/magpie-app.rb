cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.753"
  sha256 arm:   "daec7b565fdebccb2c2a976ae1a15cf0d30de844825cad4a7b8280177c67ed95",
         intel: "eb2a65f8bf4b2700a9844295db887fdb520cc3c55df80699426b85de949df508"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
