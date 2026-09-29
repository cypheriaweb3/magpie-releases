cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.429"
  sha256 arm:   "b54d7a9bb68f19b8610f75303af49f57612c0d6c2e2103a5c80167dd152096c9",
         intel: "8c9cd0c9a38562c7e574aa92b86a469f74798f10a87183ddbe1b7f5e1478d504"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
