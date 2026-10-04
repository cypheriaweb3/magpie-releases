cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.850"
  sha256 arm:   "a43fb6052124ede8f7f0bf2c4376a726b3f5cbfb3acdc153a472a25a81220f45",
         intel: "c91510c4a298145a44e872b320c7864863de742b93977740c98edd40a08cf2cf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
