cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.544"
  sha256 arm:   "c6d7d6f8678ae2c3a458b4caf5e36686b8fe796f2177dfa057828900f4b5b279",
         intel: "8e1941c8c2820be73689015e9f50586e5a87291dd8c39572c94e919b34b5c603"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
