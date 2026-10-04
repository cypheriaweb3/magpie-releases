cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.882"
  sha256 arm:   "d90c6f2574bb2a614aa97bb8999bad575f84da4323c4e89e1ac5965ad5a272ac",
         intel: "b43c911051284718dda7c08dee64990236e770d5edc3bb380cd1e84e10d7a105"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
