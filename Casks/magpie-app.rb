cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.538"
  sha256 arm:   "426823a15d6cf1b8bb4688ace0870218dbf9575fbd6024759a9cb91133512a8e",
         intel: "bbadc713347348210db0665dbb53dd7f0ba6a35239b9a7dfd299254f4b582550"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
