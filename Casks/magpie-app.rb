cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.358"
  sha256 arm:   "62073bca5078e40e2875207d6ba45649bc49dcf016f214dfc70d5ebab83006da",
         intel: "6f2c0eddb2ba1b13d4fd67b9f6278c93da9048f52b4f11e675a9ac1fdab43cdf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
