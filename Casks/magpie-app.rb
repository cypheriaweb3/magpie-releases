cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.535"
  sha256 arm:   "8340737febd1237a5c4322bf8416d82a128916ca63b7e9740da6b9a1442e033c",
         intel: "3308f323f167a04996cf6685eedcf1f8644e1160618546cd17e6a9997c3ba6a3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
