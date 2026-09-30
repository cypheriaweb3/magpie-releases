cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.511"
  sha256 arm:   "781126edb4e43dc4bd4641a9f015e894a5af5988bd41bb9ca60535a06e5adcc5",
         intel: "f124f95644b31aa5ebab7cbd379cd3ca7f8dada411803567404acccb4df512f8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
