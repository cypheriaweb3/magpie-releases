cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.322"
  sha256 arm:   "7cc2d9a14b5b3273a1b56730b77dab31a31af0eeb00e3a1285372f140a3e7c24",
         intel: "15cfc76eba31b15c79460d72bb7a9f018a60c595a55cbff69e360cc88378cfb9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
