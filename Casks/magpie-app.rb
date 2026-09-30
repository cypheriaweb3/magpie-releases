cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.518"
  sha256 arm:   "a9a9f72e696ce686d52c1a9d276d8b00c8fb6e69a8bde9194b0cafea0dbda685",
         intel: "374e0e522982a777651ffa047c823221bac20aa1b8dfd195c2b9f0232fc88095"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
