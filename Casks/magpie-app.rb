cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.688"
  sha256 arm:   "12d93cece59447fb75470719958cc08e7245840d064c67082aeb1b73ffd2b9cb",
         intel: "81a44c66b19f9dc7d6980ae9a7d8a0a85d29dc77b8b81b0ce338ebb0fbb371cc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
