cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.551"
  sha256 arm:   "369d5455825e6fd934b4d9c24e488f07e5fc15f2e6cc8b9e6d51f00043f1c420",
         intel: "98181feeffd7e075ea1bf6f084254c25c9aa3597cec3d19bd957aac24aeb787e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
